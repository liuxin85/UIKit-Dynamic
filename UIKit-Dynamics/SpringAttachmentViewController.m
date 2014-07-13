//
//  SpringAttachmentViewController.m
//  UIKit-Dynamics
//
//  Created by liuxin on 14-7-13.
//  Copyright (c) 2014年 liu xin. All rights reserved.
//

#import "SpringAttachmentViewController.h"

@interface SpringAttachmentViewController ()

@end

@implementation SpringAttachmentViewController

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
    UIGravityBehavior *gravityBehavior = [[UIGravityBehavior alloc]initWithItems:@[self.ball, self.star]];
    UICollisionBehavior *collisionBehavior = [[UICollisionBehavior alloc]initWithItems:@[self.ball, self.star]];
    
    CGPoint anchorPoint = CGPointMake(self.view.frame.size.width /2 , 20);
    UIAttachmentBehavior *ballAttachmentBehavior = [[UIAttachmentBehavior alloc]initWithItem:self.ball attachedToAnchor:anchorPoint];
    UIAttachmentBehavior *starAttachmentBehavior = [[UIAttachmentBehavior alloc]initWithItem: self.star offsetFromCenter: UIOffsetMake(-20.0, 0) attachedToItem:self.ball offsetFromCenter:UIOffsetZero];
    
    
    collisionBehavior.translatesReferenceBoundsIntoBoundary = YES;
    [ballAttachmentBehavior setFrequency: 10.0];
    [ballAttachmentBehavior setDamping: 0.65];
    
    [starAttachmentBehavior setFrequency: 10.0];
    [starAttachmentBehavior setDamping: 0.65];
    
    [self.animator addBehavior: ballAttachmentBehavior];
    [self.animator addBehavior: starAttachmentBehavior];
    [self.animator addBehavior: collisionBehavior];
    [self.animator addBehavior: gravityBehavior];
                                              
    
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
