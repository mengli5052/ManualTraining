//
//  DataEngine.m
//  敏敏订餐
//
//  Created by qianfeng on 15/5/6.
//  Copyright (c) 2015年 zhangwuyang. All rights reserved.
//

#import "DataEngine.h"
//#import "NSString+Print.h"
#import "Define.h"


@implementation DataEngine
{
    AFHTTPRequestOperationManager *_httpManager;
}

+(instancetype)sharedInstance
{
    
    static DataEngine *s_engine = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        s_engine = [[DataEngine alloc] init];
    });
    return s_engine;
    
}

- (id)init {
    if (self = [super init]) {
        _httpManager = [[AFHTTPRequestOperationManager alloc] init];
        _httpManager.responseSerializer = [AFHTTPResponseSerializer serializer];
        
    }
    return self;
}

- (void)requestHomeDataAtPage:(NSInteger)pageNo url:(NSString *)url success:(SuccessBlockType)successBlock failed:(FailedBlockType)failedBlock {
   [_httpManager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (successBlock) {
            successBlock(responseObject);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (failedBlock) {
            failedBlock(error);
        }
    }];
}

//NearBy的数据引擎
- (void)requestNearByDataAtPage:(NSString *)url success:(SuccessBlockType)successBlock failed:(FailedBlockType)failedBlock {
    //获取网址
       [_httpManager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (successBlock) {
            successBlock(responseObject);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (failedBlock) {
            failedBlock(error);

        }
    }];
}

//Shoot数据引擎

//- (void)requestShootrDataAtPage:(NSInteger)pageNo success:(SuccessBlockType)successBlock failed:(FailedBlockType)failedBlock {
//    NSString *url = [NSString stringWithFormat:kShootUrl,pageNo];
//    [_httpManager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
//        if (successBlock) {
//            successBlock(responseObject);
//        }
//    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//        if (failedBlock) {
//            failedBlock(error);
//            
//        }
//    }];
//    
//}
//
//- (void)requestHomeDataAtPageSuccess:(SuccessBlockType)successBlock failed:(FailedBlockType)failedBlock {
//    NSString *url = [NSString stringWithFormat:kHomePage];
//    [_httpManager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
//        if (successBlock) {
//            successBlock(responseObject);
//        }
//    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//        if (failedBlock) {
//            failedBlock(error);
//            
//        }
//    }];
//}
//
//- (void)requestBussinessData:(NSInteger)pageNo success:(SuccessBlockType)successBlock failed:(FailedBlockType)failedBlock {
//    NSString *url = [NSString stringWithFormat:kBussinessUrl,pageNo];
//    [_httpManager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
//        if (successBlock) {
//            successBlock(responseObject);
//        }
//    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//        if (failedBlock) {
//            failedBlock(error);
//            
//        }
//    }];
//}
//
//
//-(void)requestTherapySuccess:(NSInteger)pageNo success:(SuccessBlockType)successBlock failed:(FailedBlockType)failedBlock{
//    
//    NSString *url = [NSString stringWithFormat:kOreder,pageNo];
//    {
//        [_httpManager  GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject){
//            if (successBlock) {
//                successBlock(responseObject);
//            }
//        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//            if (failedBlock) {
//                failedBlock(error);
//
//            }
//        }];
//    }
//}
//
//- (void)requestSubTherapyOfficeId:(NSInteger)officeId userID:(NSString *)userID success:(SuccessBlockType)successBlock failed:(FailedBlockType)failedBlock {
//    
//    NSString *url = [NSString stringWithFormat:KOreder2,userID,officeId];
//    [_httpManager  GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject){
//        if (successBlock) {
//            successBlock(responseObject);
//        }
//    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//        if (failedBlock) {
//            failedBlock(error);
//            
//        }
//    }];
//    
//}
//- (void)requestMeiShiData:(NSString *)pageNo success:(SuccessBlockType)successBlock failed:(FailedBlockType)failedBlock{
//    
//    NSString *url = [NSString stringWithFormat:KmeiShiDetail,pageNo];
//    
//    [_httpManager  GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject){
//        if (successBlock) {
//            successBlock(responseObject);
//        }
//    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//        if (failedBlock) {
//            failedBlock(error);
//            
//        }
//    }];
//    
//}
//- (void)requestYouHuiData:(NSString *)pageNo success:(SuccessBlockType)successBlock failed:(FailedBlockType)failedBlock {
//    
//    NSString *url = [NSString stringWithFormat:KYouHuiDetail,pageNo];
//    
//    [_httpManager  GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject){
//        if (successBlock) {
//            successBlock(responseObject);
//        }
//    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//        if (failedBlock) {
//            failedBlock(error);
//            
//        }
//    }];
//    
//}





@end
