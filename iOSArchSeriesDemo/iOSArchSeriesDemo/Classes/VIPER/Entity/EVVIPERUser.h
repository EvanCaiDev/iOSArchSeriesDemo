//
//  EVVIPERUser.h
//  iOSArchSeriesDemo
//
//  Created by caiwanhong on 2025/8/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EVVIPERUser : NSObject

@property (nonatomic, copy) NSString *userID;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger gender; // 0 女，1 男
@end

NS_ASSUME_NONNULL_END
