//
//  EVVIPERUserListRouter.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/27.
//

#import "EVVIPERUserListRouter.h"
#import "EVVIPERUserListViewController.h"
#import "EVVIPERUserListPresenter.h"
#import "EVVIPERUserListInteractor.h"

@implementation EVVIPERUserListRouter

+ (UIViewController *)createModule {
    EVVIPERUserListViewController *view = [[EVVIPERUserListViewController alloc] init];
    EVVIPERUserListPresenter *presenter = [EVVIPERUserListPresenter new];
    EVVIPERUserListInteractor *interactor = [EVVIPERUserListInteractor new];
    EVVIPERUserListRouter *router = [EVVIPERUserListRouter new];
    
    view.presenter = presenter;
    presenter.view = view;
    presenter.interactor = interactor;
    presenter.router = router;
    
    return view;
}

- (void)dealloc {
    NSLog(@"%s",__func__);
}
@end



