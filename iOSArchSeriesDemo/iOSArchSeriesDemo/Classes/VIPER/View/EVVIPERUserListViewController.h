//
//  EVVIPERUserListViewController.h
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/27.
//

#import <UIKit/UIKit.h>
#import "EVVIPERUserListViewProtocol.h"
#import "EVVIPERUserListPresenterProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface EVVIPERUserListViewController : UIViewController <EVVIPERUserListViewProtocol>
@property (nonatomic, strong) id<EVVIPERUserListPresenterProtocol> presenter;
@end

NS_ASSUME_NONNULL_END



