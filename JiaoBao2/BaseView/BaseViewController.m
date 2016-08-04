//
//  BaseViewController.m
//  JiaoBao2
//
//  Created by Zqw on 16/8/3.
//  Copyright © 2016年 JSY. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIButton *leftbutton=[UIButton buttonWithType:UIButtonTypeCustom];
    [leftbutton setImage: [UIImage imageNamed:@"Image_scan"] forState:UIControlStateNormal];
    leftbutton.frame=CGRectMake(0, 0, 25, 25);
    [leftbutton addTarget:self action:@selector(SaoMiao) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithCustomView:leftbutton];
    
    UIButton *rightbutton=[UIButton buttonWithType:UIButtonTypeCustom];
    [rightbutton setImage: [UIImage imageNamed:@"btn_search"] forState:UIControlStateNormal];
    rightbutton.frame=CGRectMake(0, 0, 25, 25);
    [rightbutton addTarget:self action:@selector(Search) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithCustomView:rightbutton];
    
    self.navigationItem.title = @"教宝";
}

- (void) viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    
    [self setHidesBottomBarWhenPushed:NO];
}

-(void)SaoMiao{
    NSLog(@"SaoMiao");
}
-(void)Search{
    NSLog(@"Search");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
