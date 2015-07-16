//
//  FirstCell.h
//  ManualTraining
//
//  Created by qianfeng on 15/7/13.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstModel.h"
#import "UIImageView+WebCache.h"
#import "DarenModel.h"
@interface FirstCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIView *view;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
-(void)showDataWithModel:(FirstModel*)model;
@end
