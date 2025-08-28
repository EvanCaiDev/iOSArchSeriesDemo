//
//  EVVIPERUserListViewController.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/27.
//

#import "EVVIPERUserListViewController.h"
#import "EVVIPERUserDisplayItem.h"
#import "EVVIPERUserTableViewCell.h"

@interface EVVIPERUserListViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray<EVVIPERUserDisplayItem *> *items;

@end

@implementation EVVIPERUserListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"VIPER Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView.delegate = self; _tableView.dataSource = self;
    [_tableView registerClass:[EVVIPERUserTableViewCell class] forCellReuseIdentifier:@"Cell"];
    [self.view addSubview:_tableView];
    
    [self.presenter loadUsers];
}

- (void)updateWithDisplayItems:(NSArray<EVVIPERUserDisplayItem *> *)items {
    _items = items;
    [_tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    EVVIPERUserTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    [cell configureWithItem:_items[indexPath.row]];
    return cell;
}

// ViewController 只通知 Presenter
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    EVVIPERUserDisplayItem *item = _items[indexPath.row];
    [self.presenter didSelectUser:item];
}

- (void)dealloc {
    NSLog(@"%s",__func__);
}
@end




