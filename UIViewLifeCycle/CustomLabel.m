//
//  CustomLabel.m
//  UIViewLifeCycle
//
//  Created by HChong on 2017/9/25.
//  Copyright © 2017年 HChong. All rights reserved.
//

#import "CustomLabel.h"

@implementation CustomLabel

- (CGSize)intrinsicContentSize {
    CGSize size = [super intrinsicContentSize];
    size.width += 20;
    size.height += 20;
    return size;
}

@end
