//
//  PushViewController.m
//  UIKit-Dynamics
//
//  Created by liuxin on 14-7-13.
//  Copyright (c) 2014年 liu xin. All rights reserved.
//

#import "PushViewController.h"

@interface PushViewController ()

@end

@implementation PushViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.animator = [[UIDynamicAnimator alloc]initWithReferenceView: self.view];
    UIPushBehavior *instantPushBehavior = [[UIPushBehavior alloc]initWithItems:@[self.ball1] mode:UIPushBehaviorModeInstantaneous];
    UIPushBehavior *continuousPushBehavior = [[UIPushBehavior alloc]initWithItems:@[self.ball2] mode:UIPushBehaviorModeContinuous];
    
    instantPushBehavior.angle =  -1.57;
    continuousPushBehavior.angle = -1.57;
    instantPushBehavior.magnitude = 0.5;
    continuousPushBehavior.magnitude = 0.5;
    [self.animator addBehavior: instantPushBehavior];
    [self.animator addBehavior: continuousPushBehavior];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
