//
//  EVVIPERUserListRouterProtocol.h
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/27.
//

#import <UIKit/UIKit.h>
@class EVVIPERUserDisplayItem;

NS_ASSUME_NONNULL_BEGIN

@protocol EVVIPERUserListRouterProtocol <NSObject>
+ (UIViewController *)createModule;
- (void)navigateToUserDetailFrom:(UIViewController *)from userItem:(EVVIPERUserDisplayItem *)item;
@end

NS_ASSUME_NONNULL_END
