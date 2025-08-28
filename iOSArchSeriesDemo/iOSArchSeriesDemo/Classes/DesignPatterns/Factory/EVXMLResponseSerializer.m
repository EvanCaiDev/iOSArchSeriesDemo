//
//  EVXMLResponseSerializer.m
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import "EVXMLResponseSerializer.h"

@implementation EVXMLResponseSerializer

- (id)serializeResponse:(NSData *)data error:(NSError **)error {
    // iOS 内置的 NSXMLParser
    NSXMLParser *parser = [[NSXMLParser alloc] initWithData:data];
    if (!parser && error) {
        *error = [NSError errorWithDomain:@"EVXMLSerializerError"
                                     code:-1
                                 userInfo:@{NSLocalizedDescriptionKey: @"无法解析为 XML"}];
    }
    return parser;
}

@end
