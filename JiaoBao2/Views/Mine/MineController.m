//
//  MineController.m
//  DouYU
//
//  Created by Alesary on 15/10/29.
//  Copyright © 2015年 Alesary. All rights reserved.
//

#import "MineController.h"
#import "Public.h"
#import "FirstCell.h"
#import "HeadCell.h"

@interface MineController () <UITableViewDataSource,UITableViewDelegate>
{
    UITableView *_tableView;
    
    NSArray *_dataArray;
}

@end

@implementation MineController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;

    _dataArray=@[@[@"Image_focus.png",@"我的关注"],@[@"Image_history.png",@"观看历史"],@[@"Image_tesk.png",@"我的任务"],@[@"Image_remind.png",@"开播提醒"],@[@"Image_set.png",@"系统设置"],@[@"Image_recommend.png",@"精彩推荐"]];
    [self initTableView];
    
    
}

-(void)initTableView;
{
    _tableView=[[UITableView alloc]initWithFrame:CGRectMake(0, -20, screen_width, screen_height) style:UITableViewStyleGrouped];
    
    _tableView.delegate=self;
    _tableView.dataSource=self;
    HeadCell *headImgV =[[[NSBundle mainBundle]loadNibNamed:@"HeadCell" owner:nil options:nil] firstObject];
    _tableView.tableHeaderView = headImgV;
    
    [self.view addSubview:_tableView];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
        return 5;

}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{

    
    return 50*KWidth_Scale;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20*KWidth_Scale;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.1;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section==0) {
        
        static NSString *Tcell=@"3cell";
        
        UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:Tcell];
        
        if (!cell) {
            
            cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:Tcell];
            
        }
        
        NSArray *array=_dataArray[indexPath.row];
        cell.imageView.image=[UIImage imageNamed:array[0]];
        cell.textLabel.text=array[1];
        cell.detailTextLabel.text=@"更多鱼丸等你来拿";
        cell.detailTextLabel.font=[UIFont systemFontOfSize:13];
        cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle=UITableViewCellSelectionStyleNone;
        
        return cell;
        
    }else if(indexPath.section==1)  {
        static NSString *Wcell=@"Wcell";

        UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:Wcell];

        if (!cell) {
            
            cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:Wcell];
            
        }
        
        NSArray *array=_dataArray[indexPath.row];
        cell.imageView.image=[UIImage imageNamed:array[0]];
        cell.textLabel.text=array[1];
        cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle=UITableViewCellSelectionStyleNone;


        return cell;
    }else if(indexPath.section==2){
    
        static NSString *Tcell=@"3cell";
        
        UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:Tcell];
        
        if (!cell) {
            
            cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:Tcell];
            
        }
        
        NSArray *array=_dataArray.lastObject;
        cell.imageView.image=[UIImage imageNamed:array[0]];
        cell.textLabel.text=array[1];
        cell.detailTextLabel.text=@"更多鱼丸等你来拿";
        cell.detailTextLabel.font=[UIFont systemFontOfSize:13];
        cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle=UITableViewCellSelectionStyleNone;
        
        return cell;

    }
    
    return nil;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section==0) {
        
        //tou xiang
    }else if (indexPath.section==1){
    
        if (indexPath.row==0) {
            
            //guanzhu
        }else if (indexPath.row==1)
        {
            //lishi
        }else if (indexPath.row==2)
        {
            //renwu
        }else if (indexPath.row==3)
        {
            //kaibo
        }else if (indexPath.row==4)
        {

        }
    
    }else if (indexPath.section==2){
        
        //jing cai
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}



@end
