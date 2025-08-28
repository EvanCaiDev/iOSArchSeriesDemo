//
//  EVVIPERUserListPresenter.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/27.
//

#import "EVVIPERUserListPresenter.h"
#import "EVVIPERUserDisplayItem.h"
#import "EVVIPERUser.h"

@implementation EVVIPERUserListPresenter

- (void)loadUsers {
    [self.interactor fetchUsersWithCompletion:^(NSArray<EVVIPERUser *> *users) {
        NSMutableArray *items = [NSMutableArray array];
        for (EVVIPERUser *user in users) {
            EVVIPERUserDisplayItem *item = [EVVIPERUserDisplayItem new];
            item.userID = user.userID;
            item.name = user.name;
            item.genderString = (user.gender == 0) ? @"女" : @"男";
            [items addObject:item];
        }

        if ([self.view respondsToSelector:@selector(updateWithDisplayItems:)]) {
            [self.view updateWithDisplayItems:items];
        }
    }];
}

- (void)didSelectUser:(EVVIPERUserDisplayItem *)item {
    UIViewController *sourceVC = (UIViewController *)self.view;
    [self.router navigateToUserDetailFrom:sourceVC userItem:item];
}

- (void)dealloc {
    NSLog(@"%s",__func__);
}
@end




