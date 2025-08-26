//
//  EVCoreDataStorage.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import "EVCoreDataStorage.h"

@implementation EVCoreDataStorage
- (void)saveObject:(id)object forKey:(NSString *)key {
    // CoreData 保存逻辑（省略）
}

- (id)loadObjectForKey:(NSString *)key {
    // CoreData 查询逻辑（省略）
    return nil;
}

- (void)deleteObjectForKey:(NSString *)key {
    // CoreData 删除逻辑（省略）
}

- (NSString *)storageType {
    return @"CoreData";
}
@end
