//
//  RotationVC.m
//  Gesture
//
//  Created by Sean Liu on 2017-11-10.
//  Copyright © 2017 Sean Liu. All rights reserved.
//

#import "RotationVC.h"

@interface RotationVC ()
- (IBAction)Rotation:(UIRotationGestureRecognizer *)sender;

@end

@implementation RotationVC


- (IBAction)Rotation:(UIRotationGestureRecognizer *)sender {
        [sender.view setTransform: CGAffineTransformRotate(sender.view.transform, sender.rotation/50)];
    }
@end
