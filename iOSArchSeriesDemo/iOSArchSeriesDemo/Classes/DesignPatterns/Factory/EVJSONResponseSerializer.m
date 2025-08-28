//
//  EVJSONResponseSerializer.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import "EVJSONResponseSerializer.h"

@implementation EVJSONResponseSerializer

- (id)serializeResponse:(NSData *)data error:(NSError **)error {
    return [NSJSONSerialization JSONObjectWithData:data options:0 error:error];
}

@end
