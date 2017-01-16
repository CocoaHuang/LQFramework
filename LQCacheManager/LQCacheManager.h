//
//  LQCacheManager.h
//  LQApp
//
//  Created by 杭州掌赢科技 on 2017/1/13.
//  Copyright © 2017年 HangZhouZhangYing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LQCacheManager : NSObject

@property (nonatomic, copy) NSString *cacheDirectoryPath;


+ (instancetype)shareMYCachesManager;



@end
