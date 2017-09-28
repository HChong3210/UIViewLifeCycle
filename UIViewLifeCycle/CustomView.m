//
//  CustomView.m
//  UIViewLifeCycle
//
//  Created by HChong on 2017/9/14.
//  Copyright © 2017年 HChong. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView
- (instancetype)init {
    self = [super init];
    if (self) {
        [self uiConfig];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
}

- (void)uiConfig {
    self.backgroundColor = [UIColor colorWithRed:0.3 green:0.5 blue:0.7 alpha:1];
}

#pragma mark - Getter, Setter

@end
