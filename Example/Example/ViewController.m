//
//  ViewController.m
//  Example
//
//  Created by Bob de Graaf on 10-11-16.
//  Copyright © 2016 GraafICT. All rights reserved.
//

#import "ViewController.h"
#import "BDGRoundedView.h"
#import "BDGBorderedView.h"
#import "BDGCircularView.h"
#import "BDGShadowedView.h"
#import "BDGRoundedButton.h"
#import "BDGDashedLineView.h"

@interface ViewController ()
{
    
}

@property(nonatomic,weak) IBOutlet BDGRoundedView *roundedView;
@property(nonatomic,weak) IBOutlet BDGBorderedView *borderedView;
@property(nonatomic,weak) IBOutlet BDGCircularView *circularView;
@property(nonatomic,weak) IBOutlet BDGShadowedView *shadowedView;
@property(nonatomic,weak) IBOutlet BDGRoundedButton *roundedButton;
@property(nonatomic,weak) IBOutlet BDGDashedLineView *dashedLineView;

@end

@implementation ViewController

-(void)viewDidLoad
{
    [super viewDidLoad];

    //Customize views - code should be more important than IBInspectables, they should override that
    self.borderedView.borderColor = [UIColor yellowColor];
    self.borderedView.borderWidth = 3.0f;
    self.borderedView.cornerRadius = 10.0f;
    
    self.roundedView.botLeftCorner = TRUE;
    self.roundedView.botRightCorner = TRUE;
    self.roundedView.topLeftCorner = FALSE;
    self.roundedView.topRightCorner = FALSE;
    self.roundedView.borderWidth = 5.0f;
    self.roundedView.borderColor = [UIColor redColor];
    
    self.circularView.borderColor = [UIColor greenColor];
    self.circularView.borderWidth = 2.0f;
    
    self.shadowedView.shadowColor = [UIColor blueColor];
    self.shadowedView.shadowOffset = CGSizeMake(0, 5);
    
    self.roundedButton.borderWidth = 4.0;
    self.roundedButton.borderColor = [UIColor purpleColor];
    
    self.dashedLineView.dashedGap = 10.0f;
    self.dashedLineView.dashedLength = 2.0f;
}


@end
