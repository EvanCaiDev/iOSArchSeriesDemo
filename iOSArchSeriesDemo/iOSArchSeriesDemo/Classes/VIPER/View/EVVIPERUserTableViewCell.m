//
//  EVVIPERUserTableViewCell.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/27.
//

#import "EVVIPERUserTableViewCell.h"
#import "EVVIPERUserDisplayItem.h"

@interface EVVIPERUserTableViewCell ()

@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *genderLabel;

@end

@implementation EVVIPERUserTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _nameLabel = [[UILabel alloc] init];
        _genderLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_nameLabel];
        [self.contentView addSubview:_genderLabel];
        _nameLabel.frame = CGRectMake(15, 10, 200, 20);
        _genderLabel.frame = CGRectMake(220, 10, 50, 20);
    }
    return self;
}

- (void)configureWithItem:(EVVIPERUserDisplayItem *)item {
    self.textLabel.text = [NSString stringWithFormat:@"%@ (%@)", item.name, item.genderString];
}

- (void)dealloc {
    NSLog(@"%s",__func__);
}
@end


