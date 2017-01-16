//
//  LQCacheManager.m
//  LQApp
//
//  Created by 杭州掌赢科技 on 2017/1/13.
//  Copyright © 2017年 HangZhouZhangYing. All rights reserved.
//

#import "LQCacheManager.h"

NSString * const kCachesDirectoryName = @"MYCachesDirectory";         //缓存文件夹
NSString * const kCachesDataKey = @"CachesDataKey";                   //数据字典的 data key
NSString * const kCachesSaveTime = @"CachesSaveTime";                 //数据字典的 缓存时间
NSString * const kCachesFailTime = @"MYCachesDirectory";              //数据字典的 过期时间 0:不会过期

static LQCacheManager *CachesManager = nil;

@implementation LQCacheManager

#pragma mark set up
+ (instancetype)shareMYCachesManager
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        CachesManager = [[LQCacheManager alloc] init];
    });
    return CachesManager;
}

@end
