//
//  BDGRoundedButton.m
//  GraafICT
//
//  Created by Bob de Graaf on 16-12-15.
//  Copyright © 2015 GraafICT. All rights reserved.
//

#import "BDGRoundedButton.h"

@implementation BDGRoundedButton


-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(!self) {
        return nil;
    }
    [self doCorner];
    return self;
}


-(instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if(!self) {
        return nil;
    }
    [self doCorner];
    return self;
}

-(void)awakeFromNib
{
    [super awakeFromNib];
    [self doCorner];
}

-(void)prepareForInterfaceBuilder
{
    [super prepareForInterfaceBuilder];
    [self doCorner];
}

-(void)doCorner
{
    self.opaque = false;
    self.clipsToBounds = true;
    self.layer.borderWidth = self.borderWidth;
    self.layer.borderColor = self.borderColor.CGColor;
    self.layer.cornerRadius = self.cornerRadius;
}

-(void)layoutSubviews {
    [super layoutSubviews];
    [self doCorner];
}

@end
