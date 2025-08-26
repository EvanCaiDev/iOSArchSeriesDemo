//
//  EVAlipayStrategy.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import "EVAlipayStrategy.h"

@implementation EVAlipayStrategy
- (void)payWithAmount:(double)amount {
    NSLog(@"调用支付宝支付，金额: %.2f", amount);
}
@end
