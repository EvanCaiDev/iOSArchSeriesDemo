//
//  EVUserListViewModel.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import "EVUserListViewModel.h"
#import "EVUser.h"
#import "EVUserDisplayItem.h"

@interface EVUserListViewModel ()
@property (nonatomic, strong, readwrite) NSArray<EVUserDisplayItem *> *displayItems;
@end

@implementation EVUserListViewModel

- (void)loadUsers:(void(^)(void))completion {
    // 模拟接口数据
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
    
    NSMutableArray *items = [NSMutableArray array];
    for (EVUser *u in @[user1, user2]) {
        EVUserDisplayItem *item = [EVUserDisplayItem new];
        item.displayName = u.name;
        item.displayAge = [NSString stringWithFormat:@"%ld岁", (long)u.age];
        item.displayGender = (u.gender == 0) ? @"男" : @"女";
        item.userId = u.userId;
        [items addObject:item];
    }
    self.displayItems = items;
    
    if (completion) completion();
}

@end

