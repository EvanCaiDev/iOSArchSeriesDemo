//
//  EVVIPERUserListPresenter.h
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/27.
//

#import <Foundation/Foundation.h>
#import "EVVIPERUserListPresenterProtocol.h"
#import "EVVIPERUserListViewProtocol.h"
#import "EVVIPERUserListInteractorProtocol.h"
#import "EVVIPERUserListRouterProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface EVVIPERUserListPresenter : NSObject <EVVIPERUserListPresenterProtocol>

@property (nonatomic, weak) id<EVVIPERUserListViewProtocol> view;
@property (nonatomic, strong) id<EVVIPERUserListInteractorProtocol> interactor;
@property (nonatomic, strong) id<EVVIPERUserListRouterProtocol> router;

@end

NS_ASSUME_NONNULL_END





