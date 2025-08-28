//
//  EVResponseSerializerFactory.h
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import <Foundation/Foundation.h>
#import "EVResponseSerializer.h"

typedef NS_ENUM(NSUInteger, EVResponseSerializerType) {
    EVResponseSerializerTypeJSON,
    EVResponseSerializerTypeXML
};

NS_ASSUME_NONNULL_BEGIN

@interface EVResponseSerializerFactory : NSObject

+ (id<EVResponseSerializer>)serializerWithType:(EVResponseSerializerType)type;

@end

NS_ASSUME_NONNULL_END
