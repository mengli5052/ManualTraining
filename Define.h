//
//  Define1.h
//  ManualTraining
//
//  Created by qianfeng on 15/7/12.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#ifndef ManualTraining_Define_h
#define ManualTraining_Define_h
#define kFirstString @"home"
#define kCategoryString @"cate"
#define kHotString @"top"
#define kSubjectString @"topic"
 #define kBaseUrl @"http://www.shougongke.com/index.php?m=Mob_data&a=%@"
//首页
#define kSubjectUrl @"http://www.shougongke.com/index.php?m=Mob_data&a=home"
/*
 1.2 手工达人 点击更多，进入详情（一周人气达人）
 详情：http://www.shougongke.com/index.php?m=Mob_User&versions=2.2.2&id=1193294
 增加关注：http://www.shougongke.com/index.php?m=Mob_course&a=add_guan（请求体：act=1&user_id=1193294）
 
 http://www.shougongke.com/index.php?m=Mob_notice&a=message&uid=1193294
 http://www.shougongke.com/index.php?m=Mob_User&a=getmore&type=course&id=1193294&lid=160510
 */
//分类

/*
 最热：http://www.shougongke.com/index.php?m=Mob_data&a=course_list&pid=cate&id=42&type=hot
 最新：
 http://www.shougongke.com/index.php?m=Mob_data&a=course_list&pid=cate&id=42&type=new
 最新：
 */
//排行榜

/*
 一周最热教程：http://www.shougongke.com/index.php?m=Mob_data&a=tophot&id=w&page=1
 */
//专题
#define kSubjectUrl @"http://www.shougongke.com/index.php?m=Mob_data&a=topic&page=1"
/*
 专题（仲夏夜之梦）：http://www.shougongke.com/index.php?m=Mob_data&a=topic&id=275&page=1
 */


#endif
