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
@property (nonatomic, strong) EVUserService *service;
@property (nonatomic, strong, readwrite) NSArray<EVUserViewData *> *displayItems;
@property (nonatomic, assign, readwrite) EVLoadingState state;
@property (nonatomic, copy, readwrite) NSString *errorMessage;
@end

@implementation EVUserListViewModel

- (instancetype)init {
    if (self = [super init]) {
        _service = [EVUserService new];
        _state = EVLoadingStateIdle;
    }
    return self;
}

- (void)loadUsers:(void(^)(void))completion {
    self.state = EVLoadingStateLoading;
    self.errorMessage = nil;

    [self.service fetchUsers:^(NSArray<EVUser *> * _Nullable users, NSError * _Nullable error) {
        if (error) {
            self.state = EVLoadingStateFailure;
            self.errorMessage = error.localizedDescription;
            self.displayItems = @[];
        } else {
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
            self.state = EVLoadingStateSuccess;
        }
        if (completion) completion();
    }];
}

@end

