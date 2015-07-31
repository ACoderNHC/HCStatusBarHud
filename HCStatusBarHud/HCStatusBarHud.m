//
//  HCStatusBarHud.m
//  窗口状态栏
//
//  Created by HC on 15/7/31.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "HCStatusBarHud.h"

@implementation HCStatusBarHud

//全局变量
static UIWindow *window_;
static NSTimer *time_;

//显示自定义状态栏
+ (void)showStatusHudWithImage:(UIImage *)image title:(NSString *)title
{
    //停止计时器
    [time_ invalidate];
    
    //清空window
    window_ = nil;
    
    //创建window
    window_ = [[UIWindow alloc] init];
    window_.frame = CGRectMake(0, -20, [UIScreen mainScreen].bounds.size.width, 20);
    window_.windowLevel = UIWindowLevelAlert;
    window_.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.8];
    
    //显示Window
    window_.hidden = NO;
    
    //创建window上的按钮控件，用来显示文字和图片
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    //取消按钮的用户交互功能
    button.userInteractionEnabled = NO;
    //设置按钮尺寸和window一样大
    button.frame = window_.frame;
    //设置按钮的字体
    button.titleLabel.font = [UIFont systemFontOfSize:14];
    [button setTitle:title forState:UIControlStateNormal];
    //如果有图片，设置图片
    if (image) {
        [button setImage:image forState:UIControlStateNormal];
        button.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
    }
    
    button.contentMode = UIViewContentModeCenter;
    button.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 20);
    
    //将按钮添加到window上
    [window_ addSubview:button];
    
    //给window添加动画
    [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.8 initialSpringVelocity:1 options:0 animations:^{
        window_.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 20);
    } completion:nil];
    
    //添加定时器，定时隐藏状态栏
    time_ = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(hide) userInfo:nil repeats:NO];
}

//隐藏状态栏
+ (void)hide
{
    //停止计时器
    [time_ invalidate];
    [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:1 initialSpringVelocity:0 options:0 animations:^{
        window_.frame = CGRectMake(0, -30, [UIScreen mainScreen].bounds.size.width, 20);
    } completion:nil];
}


//显示成功状态栏
+ (void)showSuccessWithTitle:(NSString *)title
{
    [self showStatusHudWithImage:[UIImage imageNamed:@"HCStatusBarHud.bundle/success"] title:title];
}
//显示失败状态栏
+ (void)showErrorWithTitle:(NSString *)title
{
    [self showStatusHudWithImage:[UIImage imageNamed:@"HCStatusBarHud.bundle/error"] title:title];
}
//显示文字状态栏
+ (void)showWithTitle:(NSString *)title
{
    [self showStatusHudWithImage:nil title:title];
}

@end
