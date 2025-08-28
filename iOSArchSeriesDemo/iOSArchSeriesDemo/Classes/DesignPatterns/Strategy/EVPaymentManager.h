//
//  EVPaymentManager.h
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, EVPaymentType) {
    EVPaymentTypeWeChat,
    EVPaymentTypeAlipay,
    EVPaymentTypeApplePay
};

NS_ASSUME_NONNULL_BEGIN

@interface EVPaymentManager : NSObject
/// 直接支付，指定金额和支付类型
- (void)payWithAmount:(double)amount type:(EVPaymentType)type;
@end

NS_ASSUME_NONNULL_END
