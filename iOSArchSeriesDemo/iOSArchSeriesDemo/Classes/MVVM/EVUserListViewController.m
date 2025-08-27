//
//  EVUserListViewController.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/27.
//

#import "EVUserListViewController.h"
#import "EVUserListViewModel.h"
#import "EVUserTableViewCell.h"
#import "EVUserDisplayItem.h"

@interface EVUserListViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) EVUserListViewModel *viewModel;
@end

@implementation EVUserListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"用户列表";
    self.view.backgroundColor = [UIColor whiteColor];
    
    _viewModel = [EVUserListViewModel new]; // 内部初始化
    [self setupTableView];
    
    __weak typeof(self) weakSelf = self;
    [self.viewModel loadUsers:^{
        [weakSelf.tableView reloadData];
    }];
}

#pragma mark - UI
- (void)setupTableView {
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[EVUserTableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.view addSubview:self.tableView];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.viewModel.displayItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    EVUserTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    EVUserDisplayItem *item = self.viewModel.displayItems[indexPath.row];
    [cell configureWithItem:item];
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    EVUserDisplayItem *item = self.viewModel.displayItems[indexPath.row];
    NSLog(@"点击了用户 %@，userId = %@", item.displayName, item.userId);
}

@end


