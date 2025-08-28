//
//  EVUserService.h
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/28.
//

#import <Foundation/Foundation.h>
@class EVUser;

NS_ASSUME_NONNULL_BEGIN

@interface EVUserService : NSObject

- (void)fetchUsers:(void(^)(NSArray<EVUser *> * _Nullable users, NSError * _Nullable error))completion;

@end

NS_ASSUME_NONNULL_END
