//
//  MainNavigationViewController.m
//  TabbarDemo
//
//  Created by Meng Fan on 16/4/22.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

#import "MainNavigationViewController.h"

@interface MainNavigationViewController ()

@end

@implementation MainNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//只初始化一次
+ (void)initialize
{
    UIImage *background = [UIImage imageNamed:@"navBar"];
    //设置导航条
    UINavigationBar *bar = [UINavigationBar appearance];
    [bar setBackgroundImage:background forBarMetrics:UIBarMetricsDefault];
    [bar setTitleTextAttributes:@{NSFontAttributeName : [UIFont boldSystemFontOfSize:20]}];
}

@end
