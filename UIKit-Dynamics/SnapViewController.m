//
//  SnapViewController.m
//  UIKit-Dynamics
//
//  Created by liuxin on 14-7-13.
//  Copyright (c) 2014年 liu xin. All rights reserved.
//

#import "SnapViewController.h"

@interface SnapViewController ()

@end

@implementation SnapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)handleGestureRecognizer:(UITapGestureRecognizer *)sender {
    CGPoint point = [sender locationInView:self.view];
    
    if ([self.animator behaviors]) {
        [self.animator removeAllBehaviors];
        UISnapBehavior *snapBehavior = [[UISnapBehavior alloc]initWithItem:self.ball snapToPoint:point];
        [self.animator addBehavior: snapBehavior];
    }
    else{
        UISnapBehavior *snapBehavior = [[UISnapBehavior alloc]initWithItem:self.ball snapToPoint:point];
        [self.animator addBehavior: snapBehavior];
    }
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.animator = [[UIDynamicAnimator alloc]initWithReferenceView: self.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
