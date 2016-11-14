//
//  BDGRoundedView.m
//  GraafICT
//
//  Created by Bob de Graaf on 04/02/16.
//  Copyright © 2016 GraafICT. All rights reserved.
//

#import "BDGRoundedView.h"

@implementation BDGRoundedView


-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(!self) {
        return nil;
    }
    return self;
}

-(void)awakeFromNib {
    [super awakeFromNib];
}

-(void)prepareForInterfaceBuilder
{
    [super prepareForInterfaceBuilder];
    [self doCorner:self];
}

-(void)doCorner:(UIView*)viewToCorner {
    self.opaque = false;
    self.clipsToBounds = true;
    
    UIBezierPath *maskPath;
    
    NSUInteger options = 0;
    
    if(self.topLeftCorner)      options = options | UIRectCornerTopLeft;
    if(self.topRightCorner)     options = options | UIRectCornerTopRight;
    if(self.botLeftCorner)      options = options | UIRectCornerBottomLeft;
    if(self.botRightCorner)     options = options | UIRectCornerBottomRight;
    
    maskPath = [UIBezierPath bezierPathWithRoundedRect:viewToCorner.bounds byRoundingCorners:options cornerRadii:CGSizeMake(self.cornerRadius, self.cornerRadius)];
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = viewToCorner.bounds;
    maskLayer.path = maskPath.CGPath;
    
    viewToCorner.layer.mask = maskLayer;
}

-(void)layoutSubviews {
    [super layoutSubviews];
    [self doCorner:self];
}

@end
