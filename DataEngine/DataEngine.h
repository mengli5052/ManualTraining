//
//  DataEngine.h
//  敏敏订餐
//
//  Created by qianfeng on 15/5/6.
//  Copyright (c) 2015年 zhangwuyang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

typedef void(^SuccessBlockType) (id respondsDada);
typedef void(^FailedBlockType) (NSError *error);


@interface DataEngine : NSObject


+(instancetype)sharedInstance;

- (void)requestHomeDataAtPage:(NSInteger)pageNo url:(NSString *)url success:(SuccessBlockType)successBlock failed:(FailedBlockType)failedBlock;

- (void)requestNearByDataAtPage:(NSString *)url success:(SuccessBlockType)successBlock failed:(FailedBlockType)failedBlock;

//- (void)requestShootrDataAtPage:(NSInteger)pageNo success:(SuccessBlockType)successBlock failed:(FailedBlockType)failedBlock ;
//
//- (void)requestHomeDataAtPageSuccess:(SuccessBlockType)successBlock failed:(FailedBlockType)failedBlock ;
//
//- (void)requestBussinessData:(NSInteger)pageNo success:(SuccessBlockType)successBlock failed:(FailedBlockType)failedBlock ;
//
//-(void)requestTherapySuccess:(NSInteger)pageNo success:(SuccessBlockType)successBlock failed:(FailedBlockType)failedBlock;
//
//- (void)requestSubTherapyOfficeId:(NSInteger)officeId userID:(NSString *)userID success:(SuccessBlockType)successBlock failed:(FailedBlockType)failedBlock;
//
//- (void)requestMeiShiData:(NSString *)pageNo success:(SuccessBlockType)successBlock failed:(FailedBlockType)failedBlock ;
//
//- (void)requestYouHuiData:(NSString *)pageNo success:(SuccessBlockType)successBlock failed:(FailedBlockType)failedBlock;
//
//下载评论详情
//- (void)requestDetailPinglunData:(NSInteger)pageNo useInfoID:(NSString *)uid success:(SuccessBlockType)successBlock failed:(FailedBlockType)failedBlock;
//
////上传评论
//
//- (void)UpLoadPingLun:(NSArray *)score RenJun:(NSString *)renjun Pingjia:(NSString *)pingjia success:(SuccessBlockType)successBlock failed:(FailedBlockType)failedBlock;


@end
