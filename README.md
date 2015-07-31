# HCStatusBarHud
一个自定义窗口状态栏
## 使用方法
将HCStatusBarHud文件夹拖入工程项目中，包含头文件#import "HCStatusBarHud.h"就可使用

```objc
//显示成功状态栏
  [HCStatusBarHud showSuccessWithTitle:@"下载成功！！！"];


//显示失败状态栏
  [HCStatusBarHud showErrorWithTitle:@"下载失败！！！"];
}

//显示普通文字状态栏
 [HCStatusBarHud showWithTitle:@"正在加载中。。。"];


//自定义状态栏
 [HCStatusBarHud showStatusHudWithImage:[UIImage imageNamed:@"right"] title:@"下载完成！"];


//隐藏状态栏
 [HCStatusBarHud hide];

```

