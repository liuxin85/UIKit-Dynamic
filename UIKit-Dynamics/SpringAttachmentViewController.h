//
//  SpringAttachmentViewController.h
//  UIKit-Dynamics
//
//  Created by liuxin on 14-7-13.
//  Copyright (c) 2014年 liu xin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SpringAttachmentViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *ball;
@property (weak, nonatomic) IBOutlet UIImageView *star;

@property (nonatomic)UIDynamicAnimator *animator;
@end
