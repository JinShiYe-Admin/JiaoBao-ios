//
//  ViewController.m
//  JiaoBao2
//
//  Created by Zqw on 16/8/3.
//  Copyright © 2016年 JSY. All rights reserved.
//

#import "ViewController.h"
#import "BaseNaviController.h"
#import "FirstPageViewController.h"
#import "Public.h"
#import "WorkViewController.h"
#import "InteractViewController.h"
#import "SquareViewController.h"
#import "MineViewController.h"
#import "MineController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *backView=[[UIView alloc]initWithFrame:self.view.frame];
    backView.backgroundColor=[UIColor grayColor];
    [self.tabBar insertSubview:backView atIndex:0];
    self.tabBar.opaque=YES;
    
    self.tabBar.tintColor=TabBar_T_Color;
    
    [self initChildViewControllers];
}

-(void)initChildViewControllers
{
    NSMutableArray *childVCArray = [[NSMutableArray alloc] initWithCapacity:2];
    
    FirstPageViewController *firstVC = [[FirstPageViewController alloc] init];
    [firstVC.tabBarItem setTitle:@"首页"];
    [firstVC.tabBarItem setImage:[UIImage imageNamed:@"btn_home_normal"]];
    [firstVC.tabBarItem setSelectedImage:[UIImage imageNamed:@"btn_home_selected"]];
    BaseNaviController *RecommendNavC = [[BaseNaviController alloc] initWithRootViewController:firstVC];
    [childVCArray addObject:RecommendNavC];
    
    WorkViewController *workVC = [[WorkViewController alloc] init];
    [workVC.tabBarItem setTitle:@"办公"];
    [workVC.tabBarItem setImage:[UIImage imageNamed:@"btn_home_normal"]];
    [workVC.tabBarItem setSelectedImage:[UIImage imageNamed:@"btn_home_selected"]];
    BaseNaviController *RecommendNavC1 = [[BaseNaviController alloc] initWithRootViewController:workVC];
    [childVCArray addObject:RecommendNavC1];
    
    InteractViewController *ColumnVC = [[InteractViewController alloc] init];
    [ColumnVC.tabBarItem setTitle:@"互动"];
    [ColumnVC.tabBarItem setImage:[UIImage imageNamed:@"btn_column_normal"]];
    [ColumnVC.tabBarItem setSelectedImage:[UIImage imageNamed:@"btn_column_selected"]];
    BaseNaviController *ColumnNavC = [[BaseNaviController alloc] initWithRootViewController:ColumnVC];
    [childVCArray addObject:ColumnNavC];
    
    SquareViewController *OnlineVC = [[SquareViewController alloc] init];
    [OnlineVC.tabBarItem setTitle:@"广场"];
    [OnlineVC.tabBarItem setImage:[UIImage imageNamed:@"btn_live_normal"]];
    [OnlineVC.tabBarItem setSelectedImage:[UIImage imageNamed:@"btn_live_selected"]];
    BaseNaviController *OnlineNavC = [[BaseNaviController alloc] initWithRootViewController:OnlineVC];
    [childVCArray addObject:OnlineNavC];
    
    MineController *MineVC = [[MineController alloc] init];
    [MineVC.tabBarItem setTitle:@"我的"];
    [MineVC.tabBarItem setImage:[UIImage imageNamed:@"btn_user_normal"]];
    [MineVC.tabBarItem setSelectedImage:[UIImage imageNamed:@"btn_user_selected"]];
    BaseNaviController *MineNavC = [[BaseNaviController alloc] initWithRootViewController:MineVC];
    [childVCArray addObject:MineNavC];
    
    
    [self setViewControllers:childVCArray];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
