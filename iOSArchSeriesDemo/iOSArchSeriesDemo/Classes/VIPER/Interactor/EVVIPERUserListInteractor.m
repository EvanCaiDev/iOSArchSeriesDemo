//
//  EVVIPERUserListInteractor.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/27.
//

#import "EVVIPERUserListInteractor.h"
#import "EVVIPERUser.h"

@implementation EVVIPERUserListInteractor

- (void)fetchUsersWithCompletion:(void(^)(NSArray<EVVIPERUser *> *users))completion {
    // 模拟网络延迟
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        EVVIPERUser *user1 = [EVVIPERUser new];
        user1.userID = @"1";
        user1.name = @"Evan";
        user1.gender = 1;

        EVVIPERUser *user2 = [EVVIPERUser new];
        user2.userID = @"2";
        user2.name = @"Alice";
        user2.gender = 0;

        if (completion) {
            completion(@[user1, user2]);
        }
    });
}

- (void)dealloc {
    NSLog(@"%s",__func__);
}
@end

