//
//  EVUser.h
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EVUser : NSObject

@property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, assign) NSInteger gender; // 0: 男, 1: 女

@end

NS_ASSUME_NONNULL_END
