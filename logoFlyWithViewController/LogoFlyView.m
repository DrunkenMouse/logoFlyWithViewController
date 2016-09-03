//
//  LogoFlyView.m
//  logoFlyWithViewController
//
//  Created by 王奥东 on 16/9/3.
//  Copyright © 2016年 王奥东. All rights reserved.
//

#import "LogoFlyView.h"

@interface LogoFlyView()
@property(nonatomic,strong)UIView *view;
@property(nonatomic,strong)UIImageView *imageView;

@end

@implementation LogoFlyView

+(instancetype)addToView:(UIView *)view withImage:(UIImage *)image backgroundColor:(UIColor *)backgroundColor{
    LogoFlyView *logoFlyView = [[LogoFlyView alloc] initWithFrame:view.frame];
    logoFlyView.view = view;
    logoFlyView.imageView = [[UIImageView alloc] initWithImage:image];
    logoFlyView.imageView.frame = CGRectMake(0, 0, 150, 150);
    logoFlyView.imageView.center = view.center;
    logoFlyView.backgroundColor = backgroundColor;
    [logoFlyView addSubview:logoFlyView.imageView];
    [view addSubview:logoFlyView];
    return logoFlyView;
    
}

-(void)logoFly{
    [UIView animateWithDuration:0.2 animations:^{
        self.imageView.frame = CGRectMake(0, 0, 50, 50);
        self.imageView.center = self.view.center;
    }completion:^(BOOL finished) {
        [UIView animateWithDuration:0.3 animations:^{
            self.imageView.frame = CGRectMake(0, 0, 5000, 5000);
            self.imageView.center = self.view.center;
            self.alpha = 0;
        } completion:^(BOOL finished) {
            [self.imageView removeFromSuperview];
        }];
    }];
}


@end
