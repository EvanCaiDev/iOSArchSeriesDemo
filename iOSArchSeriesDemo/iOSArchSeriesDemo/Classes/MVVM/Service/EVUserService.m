//
//  EVUserService.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/28.
//

#import "EVUserService.h"
#import "EVUser.h"

@implementation EVUserService

- (void)fetchUsers:(void(^)(NSArray<EVUser *> *users))completion {
    // 模拟异步网络请求
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        EVUser *user1 = [EVUser new];
        user1.userId = @"1001";
        user1.name = @"Evan";
        user1.age = 18;
        user1.gender = 0;
        
        EVUser *user2 = [EVUser new];
        user2.userId = @"1002";
        user2.name = @"Alice";
        user2.age = 22;
        user2.gender = 1;
        
        if (completion) {
            completion(@[user1, user2]);
        }
    });
}

@end
