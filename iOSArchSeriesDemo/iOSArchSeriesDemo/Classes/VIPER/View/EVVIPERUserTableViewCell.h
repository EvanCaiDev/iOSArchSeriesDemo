//
//  EVVIPERUserTableViewCell.h
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/27.
//

#import <UIKit/UIKit.h>
@class EVVIPERUserDisplayItem;

NS_ASSUME_NONNULL_BEGIN

@interface EVVIPERUserTableViewCell : UITableViewCell

- (void)configureWithItem:(EVVIPERUserDisplayItem *)item;

@end

NS_ASSUME_NONNULL_END


