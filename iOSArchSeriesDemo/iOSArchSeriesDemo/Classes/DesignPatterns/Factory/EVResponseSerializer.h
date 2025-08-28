//
//  EVResponseSerializer.h
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol EVResponseSerializer <NSObject>

- (id)serializeResponse:(NSData *)data error:(NSError **)error;

@end

NS_ASSUME_NONNULL_END
