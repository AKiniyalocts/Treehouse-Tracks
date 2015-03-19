//
//  THPresentDetailTransition.m
//  Photo Bombers
//
//  Created by Anthony Kiniyalocts on 3/19/15.
//  Copyright (c) 2015 Treehouse. All rights reserved.
//

#import "THPresentDetailTransition.h"

@implementation THPresentDetailTransition 

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{
    return  0.3;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
    UIViewController *detail = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIView *containerView = [transitionContext containerView];
    
    detail.view.alpha = 0.0;
    detail.view.frame = containerView.bounds;
    
    [containerView addSubview:detail.view];
    
    [UIView animateWithDuration:0.3 animations:^{
        detail.view.alpha = 1.0;
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:YES];
    }];
}

@end
