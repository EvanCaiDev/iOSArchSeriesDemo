//
//  EVPaymentManager.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import "EVPaymentManager.h"
#import "EVWeChatPayStrategy.h"
#import "EVApplePayStrategy.h"
#import "EVAlipayStrategy.h"

@interface EVPaymentManager ()
@property (nonatomic, strong) id<EVPaymentStrategy> strategy; // 内部组合
@end

@implementation EVPaymentManager

- (void)payWithAmount:(double)amount type:(EVPaymentType)type {
    // 内部选择策略
    switch (type) {
        case EVPaymentTypeWeChat:
            self.strategy = [EVWeChatPayStrategy new];
            break;
        case EVPaymentTypeAlipay:
            self.strategy = [EVAlipayStrategy new];
            break;
        case EVPaymentTypeApplePay:
            self.strategy = [EVApplePayStrategy new];
            break;
    }
    
    // 调用策略
    [self.strategy payWithAmount:amount];
}

@end
