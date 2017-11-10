//
//  PanVC.m
//  Gesture
//
//  Created by Sean Liu on 2017-11-10.
//  Copyright © 2017 Sean Liu. All rights reserved.
//

#import "PanVC.h"

@interface PanVC ()

@end

@implementation PanVC
- (IBAction)redPan:(UIPanGestureRecognizer *)sender {
//    sender.view.center = [sender locationInView:self.view];
    CGPoint translationInView =  [sender translationInView:self.view];
    CGPoint old = sender.view.center;
    sender.view.center = CGPointMake(old.x+ translationInView.x,old.y + translationInView.y);
    [sender setTranslation:CGPointZero inView:self.view];
}


@end
