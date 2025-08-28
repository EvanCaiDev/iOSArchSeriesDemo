//
//  EVStorageManager.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import "EVStorageManager.h"
#import "EVStorageProtocol.h"
#import "EVSQLiteStorage.h" // 固定使用 SQLite

@interface EVStorageManager ()
@property (nonatomic, strong) id<EVStorageProtocol> storage;
@end

@implementation EVStorageManager

+ (instancetype)shared {
    static EVStorageManager *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[EVStorageManager alloc] initPrivate];
    });
    return instance;
}

- (instancetype)init {
    @throw [NSException exceptionWithName:@"Singleton"
                                   reason:@"请使用 +[EVStorageManager shared]"
                                 userInfo:nil];
}

- (instancetype)initPrivate {
    if (self = [super init]) {
        // ✅ 纯组合：固定使用 SQLite
        _storage = [[EVSQLiteStorage alloc] init];
    }
    return self;
}

#pragma mark - Public Facade
- (void)saveObject:(id)object forKey:(NSString *)key {
    [self.storage saveObject:object forKey:key];
}

- (nullable id)loadObjectForKey:(NSString *)key {
    return [self.storage loadObjectForKey:key];
}

- (void)deleteObjectForKey:(NSString *)key {
    [self.storage deleteObjectForKey:key];
}

- (NSString *)currentStorageType {
    return [self.storage storageType];
}

@end

