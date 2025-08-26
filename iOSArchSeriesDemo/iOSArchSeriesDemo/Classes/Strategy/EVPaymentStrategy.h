//
//  EVPaymentStrategy.h
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol EVPaymentStrategy <NSObject>

- (void)payWithAmount:(double)amount;

@end

NS_ASSUME_NONNULL_END
