//
//  EVUserListViewModel.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import "EVUserListViewModel.h"
#import "EVUser.h"
#import "EVUserViewData.h"
#import "EVUserService.h"

@interface EVUserListViewModel ()
@property (nonatomic, strong, readwrite) NSArray<EVUserViewData *> *displayItems;
@property (nonatomic, strong) EVUserService *service;
@end

@implementation EVUserListViewModel

- (instancetype)init {
    if (self = [super init]) {
        _service = [EVUserService new];
    }
    return self;
}

- (void)loadUsers:(void(^)(void))completion {
    [self.service fetchUsers:^(NSArray<EVUser *> * _Nonnull users) {
        NSMutableArray *items = [NSMutableArray array];
        for (EVUser *u in users) {
            EVUserViewData *item = [EVUserViewData new];
            item.displayName = u.name;
            item.displayAge = [NSString stringWithFormat:@"%ld岁", (long)u.age];
            item.displayGender = (u.gender == 0) ? @"男" : @"女";
            item.userId = u.userId;
            [items addObject:item];
        }
        self.displayItems = items;
        if (completion) completion();
    }];
}

@end

