//
//  EVUserService.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/28.
//

#import "EVUserService.h"
#import "EVUser.h"

@implementation EVUserService

- (void)fetchUsers:(void(^)(NSArray<EVUser *> * _Nullable users, NSError * _Nullable error))completion {
    // 模拟异步网络请求
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        BOOL success = arc4random_uniform(2); // 随机成功/失败
        if (success) {
            EVUser *u1 = [EVUser new];
            u1.userId = @"1001";
            u1.name = @"Evan";
            u1.age = 18;
            u1.gender = 0;

            EVUser *u2 = [EVUser new];
            u2.userId = @"1002";
            u2.name = @"Alice";
            u2.age = 22;
            u2.gender = 1;

            completion(@[u1, u2], nil);
        } else {
            NSError *err = [NSError errorWithDomain:@"EVUserService"
                                               code:500
                                           userInfo:@{NSLocalizedDescriptionKey:@"服务器错误"}];
            completion(nil, err);
        }
    });
}

@end
