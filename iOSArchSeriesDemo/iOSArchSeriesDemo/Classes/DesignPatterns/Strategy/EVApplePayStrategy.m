//
//  EVApplePayStrategy.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import "EVApplePayStrategy.h"

@implementation EVApplePayStrategy
- (void)payWithAmount:(double)amount {
    NSLog(@"调用 Apple Pay，金额: %.2f", amount);
}
@end
