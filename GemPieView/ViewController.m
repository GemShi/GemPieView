//
//  ViewController.m
//  GemPieView
//
//  Created by GemShi on 16/9/19.
//  Copyright © 2016年 GemShi. All rights reserved.
//

#import "ViewController.h"
#import "GemPieView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    GemPieView *pieView = [[GemPieView alloc]initWithFrame:CGRectMake(30, 100, 260, 260)];
    pieView.backgroundColor = [UIColor blackColor];
    pieView.arcArray = @[@20,@30,@40,@10];
    pieView.colorArray = @[[UIColor yellowColor],[UIColor greenColor],[UIColor orangeColor],[UIColor lightGrayColor]];
    [self.view addSubview:pieView];
}

@end
