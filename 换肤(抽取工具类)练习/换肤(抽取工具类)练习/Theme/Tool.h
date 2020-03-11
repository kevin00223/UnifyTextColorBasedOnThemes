//
//  Tool.h
//  换肤(抽取工具类)练习
//
//  Created by 李凯 on 2020/3/11.
//  Copyright © 2020 kevin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Const.h"

NS_ASSUME_NONNULL_BEGIN



@interface Tool : NSObject

+ (void)saveWithTheme: (NSString *)theme;

+ (NSString *)getTheme;

+ (UIImage *)getImageWithType: (NSString *)type;

+ (UIColor *)setLabelColorWithTheme: (NSString *)theme;

@end

NS_ASSUME_NONNULL_END
