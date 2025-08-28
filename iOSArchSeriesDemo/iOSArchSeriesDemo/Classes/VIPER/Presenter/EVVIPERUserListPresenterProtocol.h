//
//  EVVIPERUserListPresenterProtocol.h
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/27.
//

#import <Foundation/Foundation.h>

@class EVVIPERUserDisplayItem;

NS_ASSUME_NONNULL_BEGIN

@protocol EVVIPERUserListPresenterProtocol <NSObject>

- (void)loadUsers;

- (void)didSelectUser:(EVVIPERUserDisplayItem *)item;

@end

NS_ASSUME_NONNULL_END
