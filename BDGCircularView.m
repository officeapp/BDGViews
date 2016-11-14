//
//  BDGCircularView.m
//  GraafICT
//
//  Created by Bob de Graaf on 18-11-15.
//  Copyright © 2015 GraafICT. All rights reserved.
//

#import "BDGCircularView.h"

@implementation BDGCircularView


-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(!self) {
        return nil;
    }
    
    self.layer.borderWidth = self.borderWidth;
    self.layer.borderColor = self.borderColor.CGColor;
    [self doCorner];
    return self;
}


-(instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if(!self) {
        return nil;
    }
    self.layer.borderWidth = self.borderWidth;
    self.layer.borderColor = self.borderColor.CGColor;
    [self doCorner];
    return self;
}

-(void)awakeFromNib
{
    [super awakeFromNib];
    
    self.layer.borderWidth = self.borderWidth;
    self.layer.borderColor = self.borderColor.CGColor;
    [self doCorner];
}

-(void)prepareForInterfaceBuilder
{
    [super prepareForInterfaceBuilder];
    [self doCorner];
}

-(void)doCorner
{
    //IBInspectables
#if TARGET_INTERFACE_BUILDER
    self.layer.borderWidth = self.borderWidth;
    self.layer.borderColor = self.borderColor.CGColor;
#endif
    self.layer.cornerRadius = [self radiusForBounds:self.frame];
}

-(void)setBounds:(CGRect)bounds
{
    //[self doCorner];
    [super setBounds:bounds];
}

-(CGFloat)radiusForBounds:(CGRect)bounds
{
    return fminf(bounds.size.width, bounds.size.height) / 2;
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    [self doCorner];
}

@end
