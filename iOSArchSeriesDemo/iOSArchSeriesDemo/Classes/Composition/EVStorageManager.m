//
//  EVStorageManager.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import "EVStorageManager.h"
#import "EVStorageProtocol.h"
#import "EVSQLiteStorage.h"
#import "EVCoreDataStorage.h"
#import "EVRealmStorage.h"

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
        // 内部策略选择数据库
        if ([self canUseCoreData]) {
            _storage = [[EVCoreDataStorage alloc] init];
        } else if ([self canUseRealm]) {
            _storage = [[EVRealmStorage alloc] init];
        } else {
            _storage = [[EVSQLiteStorage alloc] init];
        }
    }
    return self;
}

#pragma mark - Public Facade（对外 API）
- (void)saveObject:(id)object forKey:(NSString *)key {
    [self.storage saveObject:object forKey:key];
}

- (nullable id)loadObjectForKey:(NSString *)key {
    return [self.storage loadObjectForKey:key];
}

- (void)deleteObjectForKey:(NSString *)key {
    [self.storage deleteObjectForKey:key];
}

/// 调试显示当前后端类型
- (NSString *)currentStorageType {
    return [self.storage storageType];
}

#pragma mark - 内部策略判定
- (BOOL)canUseCoreData {
    if (@available(iOS 13.0, *)) {
        return YES;
    }
    return NO;
}

- (BOOL)canUseRealm {
    return (NSClassFromString(@"RLMRealm") != nil);
}

@end
