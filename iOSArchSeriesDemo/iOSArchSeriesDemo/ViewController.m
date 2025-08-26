//
//  ViewController.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/25.
//

#import "ViewController.h"
#import "EVChapter.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray<EVChapter *> *chapters;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"架构系列 Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupChapters];
    [self setupTableView];
}

- (void)setupChapters {
    self.chapters = @[
        [[EVChapter alloc] initWithTitle:@"设计模式" demoClassName:@"EVDesignPatternsViewController"]
    ];
}

- (void)setupTableView {
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    [self.view addSubview:self.tableView];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.chapters.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    EVChapter *chapter = self.chapters[indexPath.row];
    cell.textLabel.text = chapter.title;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    EVChapter *chapter = self.chapters[indexPath.row];
    Class demoClass = NSClassFromString(chapter.demoClassName);
    if (demoClass) {
        UIViewController *demoVC = [[demoClass alloc] init];
        demoVC.title = chapter.title;
        [self.navigationController pushViewController:demoVC animated:YES];
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
