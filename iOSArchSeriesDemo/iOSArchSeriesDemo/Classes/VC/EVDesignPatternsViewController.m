//
//  EVDesignPatternsViewController.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import "EVDesignPatternsViewController.h"
#import "EVResponseSerializerFactory.h"
#import "EVPaymentManager.h"
#import "EVStorageManager.h"

@interface EVDesignPatternsViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray<NSString *> *patterns;
@end

@implementation EVDesignPatternsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"设计模式示例";
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.patterns = @[
        @"工厂模式 (Factory)",
        @"策略模式 (Strategy)",
        @"组合模式 (Composition)"
    ];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.patterns.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"PatternCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    cell.textLabel.text = self.patterns[indexPath.row];
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
            [self factoryDemo];
            break;
        case 1:
            [self strategyDemo];
            break;
        case 2:
            [self compositionDemo];
            break;
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - Demo Methods

- (void)factoryDemo {
    NSLog(@"--- 工厂模式示例 ---");
    NSData *jsonData = [@"{\"name\":\"Evan\"}" dataUsingEncoding:NSUTF8StringEncoding];
    NSError *error = nil;
    id<EVResponseSerializer> jsonSerializer =
        [EVResponseSerializerFactory serializerWithType:EVResponseSerializerTypeJSON];
    id jsonResult = [jsonSerializer serializeResponse:jsonData error:&error];
    NSLog(@"JSON解析结果: %@", jsonResult);
}

- (void)strategyDemo {
    NSLog(@"--- 策略模式示例 ---");
    EVPaymentManager *manager = [[EVPaymentManager alloc] init];
    [manager payWithAmount:100 type:EVPaymentTypeWeChat];
    [manager payWithAmount:200 type:EVPaymentTypeAlipay];
}

- (void)compositionDemo {
    NSLog(@"--- 组合模式示例 ---");
    [[EVStorageManager shared] saveObject:@"Hello" forKey:@"key1"];
    NSString *value = [[EVStorageManager shared] loadObjectForKey:@"key1"];
    NSLog(@"加载存储值: %@", value);
}

@end
