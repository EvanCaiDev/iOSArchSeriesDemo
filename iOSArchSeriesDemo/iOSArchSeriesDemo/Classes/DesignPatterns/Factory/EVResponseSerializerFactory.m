//
//  EVResponseSerializerFactory.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import "EVResponseSerializerFactory.h"
#import "EVJSONResponseSerializer.h"
#import "EVXMLResponseSerializer.h"

@implementation EVResponseSerializerFactory

+ (id<EVResponseSerializer>)serializerWithType:(EVResponseSerializerType)type {
    switch (type) {
        case EVResponseSerializerTypeJSON:
            return [EVJSONResponseSerializer new];
        case EVResponseSerializerTypeXML:
            return [EVXMLResponseSerializer new];
    }
}

@end
