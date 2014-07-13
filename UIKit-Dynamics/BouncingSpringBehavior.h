//
//  BouncingSpringBehavior.h
//  UIKit-Dynamics
//
//  Created by liuxin on 14-7-13.
//  Copyright (c) 2014年 liu xin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BouncingSpringBehavior : UIDynamicBehavior

- (instancetype)initWithItems: (NSArray *)items withAnchorPoint: (NSString *)anchorPointString;

@end
