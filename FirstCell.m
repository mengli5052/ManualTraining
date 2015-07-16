//
//  FirstCell.m
//  ManualTraining
//
//  Created by qianfeng on 15/7/13.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "FirstCell.h"

@implementation FirstCell

- (void)awakeFromNib {
    // Initialization code
}
-(void)showDataWithModel:(NSString*)category model:(id)model{
    if ([category isEqualToString:@"FirstModel"]) {
        Class modelClass=NSClassFromString(category);
        model=[(FirstModel*)[FirstModel alloc]init];
        [self.imageView sd_setImageWithURL:[NSURL URLWithString:model.host_pic] placeholderImage:[UIImage imageNamed:@"image_guidestep_defult.9"]];
        //self.view.backgroundColor=[UIColor clearColor];
        self.textLabel.text=[NSString stringWithFormat:@"%@\nby %@",model.subject,model.user_name];
    }
    
}
@end
