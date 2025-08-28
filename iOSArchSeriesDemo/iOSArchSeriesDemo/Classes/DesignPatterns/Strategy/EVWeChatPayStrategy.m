//
//  EVWeChatPayStrategy.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import "EVWeChatPayStrategy.h"

@implementation EVWeChatPayStrategy

- (void)payWithAmount:(double)amount {
    NSLog(@"调用微信支付，金额: %.2f", amount);
}

@end
