//
//  EVUserListViewModel.h
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import <Foundation/Foundation.h>

@class EVUserViewData;

NS_ASSUME_NONNULL_BEGIN

@interface EVUserListViewModel : NSObject

@property (nonatomic, strong, readonly) NSArray<EVUserViewData *> *displayItems;

- (void)loadUsers:(void(^)(void))completion;

@end

NS_ASSUME_NONNULL_END
