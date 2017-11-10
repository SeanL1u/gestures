//
//  SwipeVC.m
//  Gesture
//
//  Created by Sean Liu on 2017-11-10.
//  Copyright © 2017 Sean Liu. All rights reserved.
//

#import "SwipeVC.h"

@interface SwipeVC ()

@end

@implementation SwipeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor brownColor];
    UIView* bottom_slide = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.center.x*2, 50)];
    bottom_slide.center = self.view.center;
    bottom_slide.backgroundColor = [UIColor whiteColor];
    bottom_slide.clipsToBounds = YES;
    [self.view addSubview:bottom_slide];
    
    UIView* top_slide = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.center.x*2, 50)];
//top_slide.center = self.view.center;
    top_slide.clipsToBounds = YES;

    top_slide.backgroundColor = [UIColor yellowColor];
    [bottom_slide addSubview:top_slide];
    
    UISwipeGestureRecognizer* swipe_left = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swiped:)];
    UISwipeGestureRecognizer* swipe_right = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swiped:)];
    [swipe_left setDirection:UISwipeGestureRecognizerDirectionLeft];
    [swipe_right setDirection:UISwipeGestureRecognizerDirectionRight];
    [top_slide addGestureRecognizer:swipe_left];
    [top_slide addGestureRecognizer:swipe_right];


    





}

- (void)swiped:(UISwipeGestureRecognizer*)sender{
    
            switch (sender.direction) {
                case UISwipeGestureRecognizerDirectionRight:{
                    
                    [UIView animateWithDuration:0.03 animations:^{
                        sender.view.center = CGPointMake(sender.view.center.x + 120, sender.view.center.y);}];
                    
                }
                    break;
                    
                case UISwipeGestureRecognizerDirectionLeft:{
                    
                    [UIView animateWithDuration:0.03 animations:^{
                        sender.view.center = CGPointMake(sender.view.center.x - 120, sender.view.center.y);}];
                    
                }
                    
                default:{break;}
            }}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
