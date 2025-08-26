//
//  EVSQLiteStorage.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import "EVSQLiteStorage.h"

@implementation EVSQLiteStorage

- (void)saveObject:(id)object forKey:(NSString *)key {
    // SQLite 保存逻辑（此处省略）
}

- (id)loadObjectForKey:(NSString *)key {
    // SQLite 查询逻辑（此处省略）
    return nil;
}

- (void)deleteObjectForKey:(NSString *)key {
    // SQLite 删除逻辑（此处省略）
}

- (NSString *)storageType {
    return @"SQLite";
}

@end
