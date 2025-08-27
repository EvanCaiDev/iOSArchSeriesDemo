//
//  EVVIPERUserListViewProtocol.h
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/27.
//

#import <Foundation/Foundation.h>

@class EVVIPERUserDisplayItem;

NS_ASSUME_NONNULL_BEGIN

@protocol EVVIPERUserListViewProtocol <NSObject>

/// 更新显示数据
- (void)updateWithDisplayItems:(NSArray<EVVIPERUserDisplayItem *> *)items;

@end

NS_ASSUME_NONNULL_END


