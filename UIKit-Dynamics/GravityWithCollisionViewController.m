//
//  GravityWithCollisionViewController.m
//  UIKit-Dynamics
//
//  Created by liuxin on 14-7-13.
//  Copyright (c) 2014年 liu xin. All rights reserved.
//

#import "GravityWithCollisionViewController.h"

@implementation GravityWithCollisionViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.animator = [[UIDynamicAnimator alloc]initWithReferenceView: self.view];
    UIGravityBehavior *gravityBehavior = [[UIGravityBehavior alloc]initWithItems:@[self.ball]];
    UICollisionBehavior *collisionBehavior = [[UICollisionBehavior alloc]initWithItems:@[self.ball]];
    collisionBehavior.translatesReferenceBoundsIntoBoundary = YES;
    collisionBehavior.collisionDelegate = self;
    
    [self.animator addBehavior: gravityBehavior];
    [self.animator addBehavior: collisionBehavior];
    
}

- (void)collisionBehavior:(UICollisionBehavior *)behavior beganContactForItem:(id<UIDynamicItem>)item withBoundaryIdentifier:(id<NSCopying>)identifier atPoint:(CGPoint)p
{
    [self.ball setAlpha: 1.0f];
}
- (void)collisionBehavior:(UICollisionBehavior *)behavior endedContactForItem:(id<UIDynamicItem>)item withBoundaryIdentifier:(id<NSCopying>)identifier
{
    [self.ball setAlpha:0.5f];
}
@end
