//
//  LogoFlyView.h
//  logoFlyWithViewController
//
//  Created by 王奥东 on 16/9/3.
//  Copyright © 2016年 王奥东. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LogoFlyView : UIView

+(instancetype)addToView:(UIView *)view withImage:(UIImage *)image backgroundColor:(UIColor *)backgroundColor;

-(void)logoFly;

@end
