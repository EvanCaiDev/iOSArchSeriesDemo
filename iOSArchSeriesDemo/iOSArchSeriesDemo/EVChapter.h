//
//  EVChapter.h
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EVChapter : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *demoClassName; // Demo对应的VC类名

- (instancetype)initWithTitle:(NSString *)title demoClassName:(NSString *)demoClassName;

@end

NS_ASSUME_NONNULL_END
