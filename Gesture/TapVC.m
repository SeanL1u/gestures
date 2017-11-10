//
//  TapVC.m
//  Gesture
//
//  Created by Sean Liu on 2017-11-10.
//  Copyright © 2017 Sean Liu. All rights reserved.
//

#import "TapVC.h"

@interface TapVC ()
@property UIView* square;
@end

@implementation TapVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.square = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    self.square.center = self.view.center;
    self.square.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.square];
    
    UITapGestureRecognizer* tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(changeColor:)];
    [self.square addGestureRecognizer:tap];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)changeColor:(UITapGestureRecognizer*)sender{
//    if(sender.view.backgroundColor == [UIColor yellowColor]){
//        self.square.backgroundColor = [UIColor redColor];
//    }
//    if(sender.view.backgroundColor == [UIColor redColor]){
//        self.square.backgroundColor = [UIColor greenColor];
//    }
//    if(sender.view.backgroundColor == [UIColor greenColor]){
//        self.square.backgroundColor = [UIColor purpleColor];
//    }
//    if(sender.view.backgroundColor == [UIColor purpleColor]){
//        self.square.backgroundColor = [UIColor yellowColor];
//    }
    
    sender.view.backgroundColor =
    [sender.view.backgroundColor
     isEqual: [UIColor purpleColor]] ? [UIColor orangeColor] : [UIColor purpleColor];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
