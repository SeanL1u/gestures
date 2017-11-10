//
//  PinchVC.m
//  Gesture
//
//  Created by Sean Liu on 2017-11-10.
//  Copyright © 2017 Sean Liu. All rights reserved.
//

#import "PinchVC.h"

@interface PinchVC ()

@end

@implementation PinchVC

-(void)viewDidLoad{
    [super viewDidLoad];
    CGFloat width = 100;
    CGFloat height = 100;
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) -width/2, CGRectGetMidY(self.view.bounds)-height/2, width, height);
    UIView *view = [[UIView alloc] initWithFrame:(frame)];
    view.backgroundColor = [UIColor brownColor];
    [self.view addSubview:view];
    
    UIPinchGestureRecognizer *pinchGes = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinched:)];
    [view addGestureRecognizer:pinchGes];
}

-(void)pinched:(UIPinchGestureRecognizer*)sender{
    CGFloat scale = sender.scale;
    sender.view.transform = CGAffineTransformMakeScale(scale, scale);
    
    scale = 1.0;
}










@end
