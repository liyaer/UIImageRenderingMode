//
//  FZTabBarVC.m
//  PayReader
//
//  Created by 杜文亮 on 2017/10/13.
//  Copyright © 2017年 杜文亮. All rights reserved.
//

#import "FZTabBarVC.h"




@interface FZTabBarVC ()

@end




@implementation FZTabBarVC

-(instancetype)initWithVCNames:(NSArray *)names titles:(NSArray *)titles images:(NSArray *)images selectedImages:(NSArray *)selectedImages selectedTitleColor:(UIColor *)selectedColor unSelectedTitleColor:(UIColor *)unSelectedColor
{
    if (self = [super init])
    {
        for (int i = 0; i < names.count; i++)
        {
#warning 添加子控制器时并不会提前走4个VC的ViewDidLoad方法，只会走一个默认选中的VC的ViewDidLoad，这也是符合我们的预期和需求的。如果发现会走4个VC的ViewDidLoad方法，那么一定是用了自定义的导航栏导致了该问题
            UIViewController *vc = [[NSClassFromString(names[i]) alloc] init];
            vc.title = titles[i];
//iOS7之前的写法(按照原图进行渲染)
//            vc.tabBarItem.title = titles[i];
//            vc.tabBarItem.image = [[UIImage imageNamed:images[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//            vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImages[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//iOS7之后的写法（自动渲染模式）
            vc.tabBarItem = [[UITabBarItem alloc] initWithTitle:titles[i] image:[UIImage imageNamed:images[i]] selectedImage:[UIImage imageNamed:selectedImages[i]]];
            
            UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
            [self addChildViewController:nav];
        }
        self.tabBar.tintColor = selectedColor;//设置选中Item的title颜色
        if (unSelectedColor)
        {
            self.tabBar.unselectedItemTintColor = unSelectedColor;//设置未选中Item的title颜色
        }
    }
    return self;
}



@end
