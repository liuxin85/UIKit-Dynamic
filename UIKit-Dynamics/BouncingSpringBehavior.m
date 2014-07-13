//
//  BouncingSpringBehavior.m
//  UIKit-Dynamics
//
//  Created by liuxin on 14-7-13.
//  Copyright (c) 2014年 liu xin. All rights reserved.
//

#import "BouncingSpringBehavior.h"

@implementation BouncingSpringBehavior
- (instancetype)initWithItems:(NSArray *)items withAnchorPoint:(NSString *)anchorPointString
{
    if (self = [super init]) {
        CGPoint anchorPoint = CGPointFromString(anchorPointString);
        
        UIGravityBehavior *gravityBehavior = [[UIGravityBehavior alloc]initWithItems: items];
        UICollisionBehavior *collisionBehavior = [[UICollisionBehavior alloc]initWithItems:items];
        
        UIAttachmentBehavior *item1AttachmentBehavior = [[UIAttachmentBehavior alloc]initWithItem:[items objectAtIndex:0] attachedToAnchor:anchorPoint];
        
        UIAttachmentBehavior *item2AttachmentBehavior = [[UIAttachmentBehavior alloc]initWithItem:[items objectAtIndex:1]
                                                                                 offsetFromCenter:UIOffsetMake(-20.0, 0)
                                                                                   attachedToItem:[items objectAtIndex:0]
                                                                                 offsetFromCenter:UIOffsetZero];
        collisionBehavior.translatesReferenceBoundsIntoBoundary = YES;
        [item1AttachmentBehavior setFrequency: 1.0];
        [item1AttachmentBehavior setDamping: 0.65];
        
        [item2AttachmentBehavior setFrequency: 1.0];
        [item2AttachmentBehavior setDamping: 0.65];
        
        [self addChildBehavior: gravityBehavior];
        [self addChildBehavior: collisionBehavior];
        [self addChildBehavior: item1AttachmentBehavior];
        [self addChildBehavior: item2AttachmentBehavior];
    }
    return  self;
}
@end
