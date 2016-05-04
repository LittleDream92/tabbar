//
//  RootTabbarController.m
//  TabbarDemo
//
//  Created by Meng Fan on 16/4/22.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

#import "RootTabbarController.h"

#import "HomeViewController.h"
#import "ActivityViewController.h"
#import "MyViewController.h"

#import "MainNavigationViewController.h"

@interface RootTabbarController ()

@end

@implementation RootTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 添加子控制器
    [self setupController:[[HomeViewController alloc]init] image:@"home_icon_1" selectedImage:@"home_icon_2" title:@"首页"];
    [self setupController:[[ActivityViewController alloc]init] image:@"acti_icon_1" selectedImage:@"acti_icon_2" title:@"活动"];
    [self setupController:[[MyViewController alloc]init] image:@"my_icon_1" selectedImage:@"my_icon_2" title:@"我的"];
}


//设置控制器
-(void)setupController:(UIViewController *)childVc image:(NSString *)image selectedImage:(NSString *)selectedImage title:(NSString *)title {
    NSLog(@"se;ect:%@", selectedImage);
    //设置文字和图片
    childVc.tabBarItem.title = title;
    childVc.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    childVc.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(100)/100.0 green:arc4random_uniform(100)/100.0 blue:arc4random_uniform(100)/100.0 alpha:1.0];
    UINavigationController *navVc = [[UINavigationController alloc]initWithRootViewController:childVc];
    [self addChildViewController:navVc];
    
}

//先对tabbar做一些属性设置.这个initialize方法,只会走一次,所以我们把tabbar初始化的一些方法放在这里面
+(void)initialize{
    //通过apperance统一设置UITabBarItem的文字属性
    //后面带有UI_APPEARANCE_SELECTOR的方法, 都可以通过appearance对象来统一设置
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    NSMutableDictionary *selectedAtts = [NSMutableDictionary dictionary];
    selectedAtts[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    selectedAtts[NSForegroundColorAttributeName] = [UIColor orangeColor];
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAtts forState:UIControlStateSelected];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
