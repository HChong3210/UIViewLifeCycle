//
//  CustomMainView.m
//  UIViewLifeCycle
//
//  Created by HChong on 2017/9/14.
//  Copyright © 2017年 HChong. All rights reserved.
//

#import "CustomMainView.h"
#import "CustomView.h"
#import "CustomLabel.h"
#import "Masonry.h"

@interface CustomMainView()

@property (nonatomic, strong) CustomView *sonView;
@property (nonatomic, strong) CustomLabel *customLabel;

@property (nonatomic, strong) UILabel *label1;
@property (nonatomic, strong) UILabel *label2;
@end

@implementation CustomMainView

- (instancetype)init {
    self = [super init];
    if (self) {
        [self uiConfig];
    }
    return self;
}

- (id)test {
    NSLog(@"-------------------------------------");
    return self;
}

- (void)uiConfig {
//    [self addSubview:self.sonView];
    
    [self addSubview:self.label1];
    [self addSubview:self.label2];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.sonView.frame = CGRectMake(10, 10, CGRectGetWidth(self.bounds) - 20, CGRectGetHeight(self.bounds) - 20);
    
    
    [self.label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(10);
        make.right.lessThanOrEqualTo(self.mas_right).offset(-10);
        make.top.equalTo(self.mas_top).offset(10);
    }];
    
    [self.label2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.label1.mas_left);
        make.right.lessThanOrEqualTo(self.mas_right).offset(-40);
        make.top.equalTo(self.label1.mas_bottom).offset(10);
        make.bottom.equalTo(self.mas_bottom).offset(-10);
    }];
}

#pragma mark - Getter, Setter
- (CustomView *)sonView {
    if (!_sonView) {
        _sonView = [[CustomView alloc] init];
    }
    return _sonView;
}

- (CustomLabel *)customLabel {
    if (!_customLabel) {
        _customLabel = [[CustomLabel alloc] init];
        _customLabel.text = @"先测试看看一行的怎么样";
    }
    return _customLabel;
}

- (UILabel *)label2 {
    if (!_label2) {
        _label2 = [[UILabel alloc] init];
        _label2.backgroundColor = [UIColor lightGrayColor];
        _label2.textColor = [UIColor blackColor];
        _label2.numberOfLines = 0;
        _label2.text = @"生命里，一些缱绻，无论素净，还是喧哗，都已经被岁月赋予了清喜的味道，一些闲词，或清新，或淡雅，总会在某一个回眸的时刻醉了流年，濡湿了柔软的心，冥冥之中，我们沿着呼唤的风声，终于在堆满落花的秋里，再次重逢，念在天涯，心在咫尺，我相信，一米阳光，才是我们最好的距离。";
    }
    return _label2;
}

- (UILabel *)label1 {
    if (!_label1) {
        _label1 = [[UILabel alloc] init];
        _label1.backgroundColor = [UIColor lightGrayColor];
        _label1.textColor = [UIColor blackColor];
        _label1.numberOfLines = 0;
        _label1.text = @"生命里，一些缱绻，无论素净，还是喧哗，都已经被岁月赋予了清喜的味道，一些闲词，或清新，或淡雅，总会在某一个回眸的时刻醉了流年，濡湿了柔软的心，冥冥之中，我们沿着呼唤的风声，终于在堆满落花的秋里，再次重逢，念在天涯，心在咫尺，我相信，一米阳光，才是我们最好的距离。";
    }
    return _label1;
}

@end
