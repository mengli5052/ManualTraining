//
//  FirstViewController.m
//  ManualTraining
//
//  Created by qianfeng on 15/7/12.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "FirstViewController.h"
#import "DataEngine.h"
#import "Define.h"
#import "FirstModel.h"
#import "FirstCell.h"
#import "DarenModel.h"
#import "GcateModel.h"
@interface FirstViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>
{
    UICollectionView *_collectionView;
    NSMutableArray *_dataArr;
    
    
}
@property(nonatomic,strong)UICollectionView *collectionView;
@property(nonatomic,strong)NSMutableArray *dataArr;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataArr=[[NSMutableArray alloc]init];
    self.collectionView.contentInset=UIEdgeInsetsMake(100, 0, 0, 0);    // Do any additional setup after loading the view.
}
-(void)createCollectionView{
    UICollectionViewFlowLayout *flowout=[[UICollectionViewFlowLayout alloc]init];
    flowout.itemSize=CGSizeMake(110, 120);
    self.collectionView=[[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:flowout];
    self.collectionView.delegate=self;
    self.collectionView.dataSource=self;
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"Cell"];
    [self.view addSubview:self.collectionView];
}
-(void)downLoadData{
    NSMutableArray *slideMutableArr=[[NSMutableArray alloc]init];
    NSMutableArray *hotMutableArr=[[NSMutableArray alloc]init];
     NSMutableArray *darenMutableArr=[[NSMutableArray alloc]init];
     NSMutableArray *gcateMutableArr=[[NSMutableArray alloc]init];
    NSString *firstUrl=[NSString stringWithFormat:kBaseUrl,kFirstString];
    [[DataEngine sharedInstance]requestHomeDataAtPage:0 url:firstUrl success:^(id respondsDada) {
        NSDictionary *dict=[NSJSONSerialization JSONObjectWithData:respondsDada options:NSJSONReadingMutableContainers error:nil];
        NSArray *slideArr=dict[@"slide"];
        NSArray *hotArr=dict[@"hot"];
        NSArray *darenArr=dict[@"daren"];
        NSArray *gcateAr=dict[@"gcate"];

        for (NSDictionary *modelDict in slideArr) {
            FirstModel *model=[[FirstModel alloc]init];
            [model setValuesForKeysWithDictionary:modelDict];
            [slideMutableArr addObject:model];
        }
        [self.dataArr addObject:slideMutableArr];
        for (NSDictionary *modelDict in hotArr) {
            FirstModel *model=[[FirstModel alloc]init];
            [model setValuesForKeysWithDictionary:modelDict];
            [hotMutableArr addObject:model];
        }
         [self.dataArr addObject:hotMutableArr];
        for (NSDictionary *modelDict in darenArr) {
            FirstModel *model=[[FirstModel alloc]init];
            [model setValuesForKeysWithDictionary:modelDict];
            [darenMutableArr addObject:model];
        }
         [self.dataArr addObject:darenMutableArr];
        for (NSDictionary *modelDict in gcateAr) {
            FirstModel *model=[[FirstModel alloc]init];
            [model setValuesForKeysWithDictionary:modelDict];
            [gcateMutableArr addObject:model];
        }
         [self.dataArr addObject:gcateMutableArr];
        [self.collectionView reloadData];
    } failed:^(NSError *error) {
        
    }];


}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return self.dataArr.count;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [self.dataArr[section] count];
}
-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    FirstCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    if (indexPath.section==0) {
        FirstModel *model=self.dataArr[indexPath.section][indexPath.row];
        [cell showDataWithModel:model];
    }else if (indexPath.section==1){
        GcateModel *model=self.dataArr[indexPath.section][indexPath.row];
        cell sho
    }
    return cell;
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
