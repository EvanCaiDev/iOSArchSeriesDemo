//
//  EVStorageManager.h
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EVStorageManager : NSObject

/// 单例访问
+ (instancetype)shared;

/// 对外暴露的业务方法
- (void)saveObject:(id)object forKey:(NSString *)key;
- (nullable id)loadObjectForKey:(NSString *)key;
- (void)deleteObjectForKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
