//
//  EVRealmStorage.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import "EVRealmStorage.h"

@implementation EVRealmStorage
- (void)saveObject:(id)object forKey:(NSString *)key {
    // Realm 保存逻辑（省略）
}

- (id)loadObjectForKey:(NSString *)key {
    // Realm 查询逻辑（省略）
    return nil;
}

- (void)deleteObjectForKey:(NSString *)key {
    // Realm 删除逻辑（省略）
}

- (NSString *)storageType {
    return @"Realm";
}

@end
