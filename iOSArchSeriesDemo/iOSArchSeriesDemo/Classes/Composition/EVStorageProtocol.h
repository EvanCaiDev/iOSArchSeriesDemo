//
//  EVStorageProtocol.h
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol EVStorageProtocol <NSObject>

- (void)saveObject:(id)object forKey:(NSString *)key;
- (nullable id)loadObjectForKey:(NSString *)key;
- (void)deleteObjectForKey:(NSString *)key;

- (NSString *)storageType; // 仅用于调试或展示

@end

NS_ASSUME_NONNULL_END
