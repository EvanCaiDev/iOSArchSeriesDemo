//
//  EVUserListViewModel.h
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import <Foundation/Foundation.h>

@class EVUserViewData;

// EVUserListViewModel.h
typedef NS_ENUM(NSInteger, EVLoadingState) {
    EVLoadingStateIdle,
    EVLoadingStateLoading,
    EVLoadingStateSuccess,
    EVLoadingStateFailure
};

NS_ASSUME_NONNULL_BEGIN

@interface EVUserListViewModel : NSObject

@property (nonatomic, strong, readonly) NSArray<EVUserViewData *> *displayItems;
@property (nonatomic, assign, readonly) EVLoadingState state;
@property (nonatomic, copy, readonly) NSString *errorMessage;

- (void)loadUsers:(void(^)(void))completion;

@end

NS_ASSUME_NONNULL_END
