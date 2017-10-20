//
//  BookShelfVC.m
//  PayReader
//
//  Created by 杜文亮 on 2017/10/13.
//  Copyright © 2017年 杜文亮. All rights reserved.
//

#import "BookShelfVC.h"

@interface BookShelfVC ()

@end

@implementation BookShelfVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"1111111");
    self.view.backgroundColor = [UIColor whiteColor];
    
    //未指定渲染模式，默认处于自动模式下，根据nav.tintColor进行渲染，未设置nav.tintColor就是默认“系统蓝”
//    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"5"] style:UIBarButtonItemStylePlain target:self action:@selector(dylog)];
    //按照原图渲染
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"5"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(dylog)];
    self.navigationItem.leftBarButtonItem = leftItem;
}

-(void)dylog
{
    NSLog(@"66666");
}

@end
