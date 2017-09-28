//
//  ViewController.m
//  UIViewLifeCycle
//
//  Created by HChong on 2017/9/14.
//  Copyright © 2017年 HChong. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"
#import "CustomMainView.h"
#import "CustomLabel.h"
#import "Masonry.h"

@interface ViewController ()

@property (nonatomic, strong) CustomMainView *customMainView;
@property (nonatomic, strong) CustomView *customView;
@property (nonatomic, strong) CustomLabel *customLabel;
@property (nonatomic, strong) CustomMainView *faterView;

@property (nonatomic, strong) UITextView *textView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
//    [self.view addSubview:self.customMainView];
//    [self.view addSubview:self.customView];
    
//    [self.view addSubview:self.faterView];
    
//    [self.view addSubview:self.customLabel];
//    [self.customLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(self.view.mas_top).offset(100);
//        make.left.equalTo(self.view.mas_left).offset(10);
//        make.right.equalTo(self.view.mas_right).offset(-10);
//    }];
    
    [self.view addSubview:self.textView];
    [self.textView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).offset(100);
        make.left.equalTo(self.view.mas_left).offset(10);
        make.right.equalTo(self.view.mas_right).offset(-10);
        make.height.equalTo(@(50));
    }];
    
    [self.textView sizeToFit];
    NSLog(@"%@", self.textView);
    
//    [self.view addSubview:self.customMainView];
//    [self.customMainView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(self.view.mas_top).offset(100);
//        make.left.equalTo(self.view.mas_left).offset(10);
//        make.right.equalTo(self.view.mas_right).offset(-10);
//    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
//    self.customMainView.frame = CGRectMake(100, 200, 80, 80);
//    self.customView.frame = CGRectMake(100, 400, 80, 80);
    
//    self.faterView.frame = CGRectMake(50, 200, 200, 200);
    
}
#pragma mark - LifeCycle
#pragma mark - UIConfig
#pragma mark - HttpRequest
#pragma mark - XXXDelegate
#pragma mark - Action
#pragma mark - Private
#pragma mark - Getter, Setter
- (CustomMainView *)customMainView {
    if (!_customMainView) {
        _customMainView = [[CustomMainView alloc] init];
        _customMainView.backgroundColor = [UIColor colorWithRed:0.2 green:0.7 blue:0.5 alpha:1];
    }
    return _customMainView;
}

- (CustomView *)customView {
    if (!_customView) {
        _customView = [[CustomView alloc] init];
        _customView.backgroundColor = [UIColor colorWithRed:0.7 green:0.2 blue:0.5 alpha:1];
    }
    return _customView;
}

- (CustomMainView *)faterView {
    if (!_faterView) {
        _faterView = [[CustomMainView alloc] init];
        _faterView.backgroundColor = [UIColor colorWithRed:0.5 green:0.2 blue:0.7 alpha:1];
    }
    return _faterView;
}

- (CustomLabel *)customLabel {
    if (!_customLabel) {
        _customLabel = [[CustomLabel alloc] init];
        _customLabel.backgroundColor = [UIColor lightGrayColor];
        _customLabel.text = @"生命里，一些缱绻，无论素净，还是喧哗，都已经被岁月赋予了清喜的味道，一些闲词，或清新，或淡雅，总会在某一个回眸的时刻醉了流年，濡湿了柔软的心，冥冥之中，我们沿着呼唤的风声，终于在堆满落花的秋里，再次重逢，念在天涯，心在咫尺，我相信，一米阳光，才是我们最好的距离。";
        _customLabel.numberOfLines = 0;
        _customLabel.preferredMaxLayoutWidth = 200;
    }
    return _customLabel;
}

- (UITextView *)textView {
    if (!_textView) {
        _textView = [[UITextView alloc] init];
        _textView.backgroundColor = [UIColor lightGrayColor];
        _textView.textColor = [UIColor blackColor];
        _textView.contentOffset = CGPointMake(0, 0);
        _textView.text = @"生命里，一些缱绻，无论素净，还是喧哗，都已经被岁月赋予了清喜的味道，一些闲词，或清新，或淡雅，总会在某一个回眸的时刻醉了流年，濡湿了柔软的心，冥冥之中，我们沿着呼唤的风声，终于在堆满落花的秋里，再次重逢，念在天涯，心在咫尺，我相信，一米阳光，才是我们最好的距离。";
    }
    return _textView;
}

@end
