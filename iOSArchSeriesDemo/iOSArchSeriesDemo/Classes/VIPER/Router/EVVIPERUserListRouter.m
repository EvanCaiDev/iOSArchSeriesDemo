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
#import "EVVIPERUserDisplayItem.h"

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

- (void)navigateToUserDetailFrom:(UIViewController *)from userItem:(EVVIPERUserDisplayItem *)item {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"用户详情"
                                                                   message:[NSString stringWithFormat:@"%@ (%@)", item.name, item.genderString]
                                                            preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil]];
    [from presentViewController:alert animated:YES completion:nil];
}

- (void)dealloc {
    NSLog(@"%s",__func__);
}
@end



