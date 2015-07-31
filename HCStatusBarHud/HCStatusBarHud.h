//
//  HCStatusBarHud.h
//  窗口状态栏
//
//  Created by HC on 15/7/31.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HCStatusBarHud : UIView

//显示成功状态栏
+ (void)showSuccessWithTitle:(NSString *)title;

//显示失败状态栏
+ (void)showErrorWithTitle:(NSString *)title;

//显示普通文字状态栏
+ (void)showWithTitle:(NSString *)title;

//显示自定义状态栏
+ (void)showStatusHudWithImage:(UIImage *)image title:(NSString *)title;

//隐藏状态栏
+ (void)hide;

@end
