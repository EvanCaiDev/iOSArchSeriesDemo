//
//  EVChapter.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/25.
//

#import "EVChapter.h"

@implementation EVChapter

- (instancetype)initWithTitle:(NSString *)title demoClassName:(NSString *)demoClassName {
    self = [super init];
    if (self) {
        _title = title;
        _demoClassName = demoClassName;
    }
    return self;
}

@end
