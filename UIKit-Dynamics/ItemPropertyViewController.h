//
//  ItemPropertyViewController.h
//  UIKit-Dynamics
//
//  Created by liuxin on 14-7-13.
//  Copyright (c) 2014年 liu xin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemPropertyViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *ball1;

@property (weak, nonatomic) IBOutlet UIImageView *ball2;

@property (nonatomic)UIDynamicAnimator *animator;

@end
