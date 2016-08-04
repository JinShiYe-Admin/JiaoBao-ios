//
//  BaseViewController.m
//  JiaoBao2
//
//  Created by Zqw on 16/8/3.
//  Copyright © 2016年 JSY. All rights reserved.
//

#import "BaseViewController.h"
#import "VKSideMenu.h"

@interface BaseViewController ()<VKSideMenuDelegate, VKSideMenuDataSource>

@property (nonatomic, strong) VKSideMenu *menu;

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
    
    self.menu = [[VKSideMenu alloc] initWithWidth:220 andDirection:VKSideMenuDirectionLeftToRight];
    self.menu.dataSource = self;
    self.menu.delegate   = self;
}

- (void) viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    
    [self setHidesBottomBarWhenPushed:NO];
}

-(void)SaoMiao{
    NSLog(@"SaoMiao");
    [self.menu show];
}
-(void)Search{
    NSLog(@"Search");
}
#pragma mark - VKSideMenuDataSource
-(NSInteger)numberOfSectionsInSideMenu:(VKSideMenu *)sideMenu
{
    return 1;
}

-(NSInteger)sideMenu:(VKSideMenu *)sideMenu numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

-(VKSideMenuItem *)sideMenu:(VKSideMenu *)sideMenu itemForRowAtIndexPath:(NSIndexPath *)indexPath
{
    VKSideMenuItem *item = [VKSideMenuItem new];
    
    switch (indexPath.row)
    {
        case 0:
            item.title = @"Profile";
            item.icon  = [UIImage imageNamed:@"ic_option_1"];
            break;
            
        case 1:
            item.title = @"Messages";
            item.icon  = [UIImage imageNamed:@"ic_option_2"];
            break;
            
        case 2:
            item.title = @"Cart";
            item.icon  = [UIImage imageNamed:@"ic_option_3"];
            break;
            
        case 3:
            item.title = @"Settings";
            item.icon  = [UIImage imageNamed:@"ic_option_4"];
            break;
            
        default:
            break;
    }
    
    return item;
}

#pragma mark - VKSideMenuDelegate

-(void)sideMenu:(VKSideMenu *)sideMenu didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"SideMenu didSelectRow: %@", indexPath);
}

-(void)sideMenuDidShow:(VKSideMenu *)sideMenu
{
    NSLog(@"VKSideMenue did show");
}

-(void)sideMenuDidHide:(VKSideMenu *)sideMenu
{
    NSLog(@"VKSideMenue did hide");
}

-(NSString *)sideMenu:(VKSideMenu *)sideMenu titleForHeaderInSection:(NSInteger)section
{
//    if (sideMenu == self.menuLeft)
        return nil;
//
//    switch (section)
//    {
//        case 0:
//            return @"Profile";
//            break;
//            
//        case 1:
//            return @"Actions";
//            break;
//            
//        default:
//            return nil;
//            break;
//    }
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
