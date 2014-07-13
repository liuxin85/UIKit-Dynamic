//
//  SnapViewController.h
//  UIKit-Dynamics
//
//  Created by liuxin on 14-7-13.
//  Copyright (c) 2014年 liu xin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SnapViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *ball;
@property (nonatomic)UIDynamicAnimator *animator;

- (IBAction)handleGestureRecognizer:(UITapGestureRecognizer *)sender;
@end
