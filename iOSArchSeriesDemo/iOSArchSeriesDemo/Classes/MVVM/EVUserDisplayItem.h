//
//  EVUserDisplayItem.h
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/26.
//

#import <Foundation/Foundation.h>
#import "EVUser.h"

NS_ASSUME_NONNULL_BEGIN

@interface EVUserDisplayItem : NSObject

@property (nonatomic, copy) NSString *displayName;
@property (nonatomic, copy) NSString *displayAge;
@property (nonatomic, copy) NSString *displayGender;
@property (nonatomic, copy) NSString *userId;

@end

NS_ASSUME_NONNULL_END
