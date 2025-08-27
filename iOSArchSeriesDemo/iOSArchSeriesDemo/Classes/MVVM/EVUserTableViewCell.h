//
//  EVUserTableViewCell.h
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import <UIKit/UIKit.h>

@class EVUserDisplayItem;

NS_ASSUME_NONNULL_BEGIN

@interface EVUserTableViewCell : UITableViewCell

- (void)configureWithItem:(EVUserDisplayItem *)item;

@end

NS_ASSUME_NONNULL_END
