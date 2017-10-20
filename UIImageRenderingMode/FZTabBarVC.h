//
//  FZTabBarVC.h
//  PayReader
//
//  Created by 杜文亮 on 2017/10/13.
//  Copyright © 2017年 杜文亮. All rights reserved.
//


/*
 *   对系统UITabBarController的简单封装
 */

#import <UIKit/UIKit.h>

@interface FZTabBarVC : UITabBarController

-(instancetype)initWithVCNames:(NSArray *)names titles:(NSArray *)titles images:(NSArray *)images selectedImages:(NSArray *)selectedImages selectedTitleColor:(UIColor *)selectedColor unSelectedTitleColor:(UIColor *)unSelectedColor;

@end

/*
 *   UIImageRenderingMode（有三种枚举值）
    
     1.UIImageRenderingModeAutomatic // 根据图片的使用环境和所处的绘图上下文自动调整渲染模式。
     2.UIImageRenderingModeAlwaysOriginal // 始终绘制图片原始状态，不使用Tint Color。
     3.UIImageRenderingModeAlwaysTemplate // 始终根据Tint Color绘制图片，忽略图片的颜色信息。
     
     UIImageRenderingMode属性的默认值是UIImageRenderingModeAutomatic，即UIImage是否使用Tint Color取决于它显示的位置（如果是使用系统的Nav、TabBar，并且使用系统的方法创建navItem、tabBarItem，给其设置图片时
                        1，果不指定渲染模式，那么图片会使用Tint Color进行绘制，最后会呈现Tint Color颜色的图片而非原始图片颜色；
                        2，指定UIImageRenderingModeAlwaysOriginal，可以保证显示原始图片
                    ）
 */






