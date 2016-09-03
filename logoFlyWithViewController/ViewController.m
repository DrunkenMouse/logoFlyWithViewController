//
//  ViewController.m
//  logoFlyWithViewController
//
//  Created by 王奥东 on 16/9/3.
//  Copyright © 2016年 王奥东. All rights reserved.
//

#import "ViewController.h"
#import "LogoFlyView.h"

@interface ViewController ()
@property(nonatomic,strong)LogoFlyView *logoView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//
    self.view.backgroundColor = [UIColor purpleColor];
    self.logoView = [LogoFlyView addToView:self.view withImage:[UIImage imageNamed:@"swift-white"] backgroundColor:[UIColor colorWithRed:251/255.f green:116/255.f blue:49/255.f alpha:1]];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.logoView logoFly];
    });
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
