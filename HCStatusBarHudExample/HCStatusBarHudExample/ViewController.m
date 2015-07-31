//
//  ViewController.m
//  窗口状态栏
//
//  Created by HC on 15/7/31.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "ViewController.h"
#import "HCStatusBarHud.h"

@implementation ViewController

//显示成功状态栏
- (IBAction)success:(id)sender {

    [HCStatusBarHud showSuccessWithTitle:@"下载成功！！！"];
}

//显示失败状态栏
- (IBAction)failure:(id)sender {
    
    [HCStatusBarHud showErrorWithTitle:@"下载失败！！！"];
}

//显示普通文字状态栏
- (IBAction)loading:(id)sender {

    [HCStatusBarHud showWithTitle:@"正在加载中。。。"];
}

//自定义状态栏
- (IBAction)customHud:(id)sender {
    [HCStatusBarHud showStatusHudWithImage:[UIImage imageNamed:@"right"] title:@"下载完成！"];
}

//隐藏状态栏
- (IBAction)hideHud:(id)sender
{
    [HCStatusBarHud hide];
}


@end
