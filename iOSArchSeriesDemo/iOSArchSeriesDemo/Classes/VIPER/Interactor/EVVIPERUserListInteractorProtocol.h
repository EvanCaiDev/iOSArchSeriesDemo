//
//  EVVIPERUserListInteractorProtocol.h
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/27.
//

#import <Foundation/Foundation.h>

@class EVVIPERUser;

NS_ASSUME_NONNULL_BEGIN

@protocol EVVIPERUserListInteractorProtocol <NSObject>

- (void)fetchUsersWithCompletion:(void(^)(NSArray<EVVIPERUser *> *users))completion;

@end

NS_ASSUME_NONNULL_END
