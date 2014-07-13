//
//  SpringAttachmentViewController.m
//  UIKit-Dynamics
//
//  Created by liuxin on 14-7-13.
//  Copyright (c) 2014年 liu xin. All rights reserved.
//

#import "SpringAttachmentViewController.h"
#import "BouncingSpringBehavior.h"

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
    
    CGPoint anchorPoint = CGPointMake(self.view.frame.size.width/2, 20);
    NSString *anchorPointString = NSStringFromCGPoint(anchorPoint);
    
    BouncingSpringBehavior *bouncingSpringBehavior = [[BouncingSpringBehavior alloc]initWithItems:@[self.ball, self.star]
                                                                                  withAnchorPoint:anchorPointString];
    [self.animator addBehavior: bouncingSpringBehavior];

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
