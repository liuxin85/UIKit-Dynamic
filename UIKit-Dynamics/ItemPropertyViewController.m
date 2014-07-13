//
//  ItemPropertyViewController.m
//  UIKit-Dynamics
//
//  Created by liuxin on 14-7-13.
//  Copyright (c) 2014年 liu xin. All rights reserved.
//

#import "ItemPropertyViewController.h"

@interface ItemPropertyViewController ()

@end

@implementation ItemPropertyViewController

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
    self.animator = [[UIDynamicAnimator alloc]initWithReferenceView:self.view];
    UIGravityBehavior *gravityBehavior = [[UIGravityBehavior alloc]initWithItems:@[self.ball1, self.ball2]];
    UICollisionBehavior *collisionBehavior = [[UICollisionBehavior alloc]initWithItems:@[self.ball1, self.ball2]];
    
    UIDynamicItemBehavior *propertiesBehavoir = [[UIDynamicItemBehavior alloc]initWithItems:@[self.ball2]];
    propertiesBehavoir.elasticity = 0.5f;
    
    
    collisionBehavior.translatesReferenceBoundsIntoBoundary = YES;
    [self.animator addBehavior:propertiesBehavoir];
    [self.animator addBehavior: gravityBehavior];
    [self.animator addBehavior: collisionBehavior];
   
    
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
