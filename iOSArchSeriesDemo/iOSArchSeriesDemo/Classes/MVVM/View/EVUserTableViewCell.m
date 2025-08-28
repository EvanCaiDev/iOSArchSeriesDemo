//
//  EVUserTableViewCell.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import "EVUserTableViewCell.h"
#import "EVUserViewData.h"

@interface EVUserTableViewCell ()
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *ageLabel;
@property (nonatomic, strong) UILabel *genderLabel;
@end

@implementation EVUserTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _ageLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _genderLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        
        UIStackView *stack = [[UIStackView alloc] initWithArrangedSubviews:@[_nameLabel, _ageLabel, _genderLabel]];
        stack.axis = UILayoutConstraintAxisHorizontal;
        stack.spacing = 16;
        stack.distribution = UIStackViewDistributionEqualSpacing;
        
        stack.translatesAutoresizingMaskIntoConstraints = NO;
        [self.contentView addSubview:stack];
        [NSLayoutConstraint activateConstraints:@[
            [stack.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor constant:16],
            [stack.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor constant:-16],
            [stack.topAnchor constraintEqualToAnchor:self.contentView.topAnchor constant:8],
            [stack.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor constant:-8],
        ]];
    }
    return self;
}

- (void)configureWithItem:(EVUserViewData *)item {
    self.nameLabel.text = item.displayName;
    self.ageLabel.text = item.displayAge;
    self.genderLabel.text = item.displayGender;
}

@end

