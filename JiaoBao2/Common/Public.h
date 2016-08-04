//
//  Public.h
//  JiaoBao2
//
//  Created by Zqw on 16/8/3.
//  Copyright © 2016年 JSY. All rights reserved.
//

//相对iphone6 屏幕比
#define KWidth_Scale    [UIScreen mainScreen].bounds.size.width/375.0f

#define TabBar_T_Color RGB(28, 111, 251)

//RGB
#define RGBA(r, g, b, a)    [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define RGB(r, g, b)     RGBA(r, g, b, 1.0f)

//系统版本
#define SYSTEM_VERSION   [[UIDevice currentDevice].systemVersion floatValue]

//设备物理尺寸
#define screen_width [UIScreen mainScreen].bounds.size.width
#define screen_height [UIScreen mainScreen].bounds.size.height