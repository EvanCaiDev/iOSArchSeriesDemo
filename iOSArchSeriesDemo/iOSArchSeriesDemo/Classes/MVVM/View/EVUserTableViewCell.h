//
//  EVUserTableViewCell.h
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import <UIKit/UIKit.h>

@class EVUserViewData;

NS_ASSUME_NONNULL_BEGIN

@interface EVUserTableViewCell : UITableViewCell

- (void)configureWithItem:(EVUserViewData *)item;

@end

NS_ASSUME_NONNULL_END
