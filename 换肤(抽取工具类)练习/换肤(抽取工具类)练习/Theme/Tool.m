//
//  Tool.m
//  换肤(抽取工具类)练习
//
//  Created by 李凯 on 2020/3/11.
//  Copyright © 2020 kevin. All rights reserved.
//

#import "Tool.h"

NSString * const kTheme = @"theme";

@implementation Tool

+ (UIColor *)setLabelColorWithTheme: (NSString *)theme {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"LabelColor.plist" ofType:nil inDirectory:[NSString stringWithFormat:@"images.bundle/%@", theme]];
//    NSLog(@"%@", path);
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:path];
    NSString *colorStr = dict[kTypeColorLabel];
    NSArray *colorSets = [colorStr componentsSeparatedByString:@","];
    CGFloat red = [colorSets[0] floatValue];
    CGFloat green = [colorSets[1] floatValue];
    CGFloat blue = [colorSets[2] floatValue];
    
    UIColor *color = [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1];
    return color;
}

+ (UIImage *)getImageWithType: (NSString *)type {
    NSString *theme = [self getTheme];
    if (theme) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%@%@%@.png", @"images.bundle/", theme, type]];
        return image;
    }else{
        return nil;
    }
}

+ (void)saveWithTheme: (NSString *)theme {
    [[NSUserDefaults standardUserDefaults] setObject:theme forKey:kTheme];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (NSString *)getTheme {
    return [[NSUserDefaults standardUserDefaults] objectForKey:kTheme];
}

@end
