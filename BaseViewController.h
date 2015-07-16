//
//  BaseViewController.h
//  ManualTraining
//
//  Created by qianfeng on 15/7/12.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController
{
    NSMutableArray *_dataArr;
    UITableView *_tableView;
}
@property(nonatomic,strong)NSMutableArray *dataArr;
@property(nonatomic,strong)UITableView *tableView;
@end
