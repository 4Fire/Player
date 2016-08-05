//
//  LoginController.m
//  SingPlayer
//
//  Created by 石燚 on 16/8/5.
//  Copyright © 2016年 SingYi. All rights reserved.
//

#import "LoginController.h"
#import "HomePageController.h"

@interface LoginController ()

//登录按钮
@property (nonatomic, strong) UIButton *loginBtn;

@end

@implementation LoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initUserInterface];
    self.view.backgroundColor = [UIColor orangeColor];
    
}

- (void)initDataSource {
    
}

- (void)initUserInterface {
    [self.view addSubview:self.loginBtn];
}

#pragma mark - events
//点击登录按钮
- (void)clickLoginBtn {
    [UIApplication sharedApplication].keyWindow.rootViewController = [HomePageController new];
}


#pragma mark - getter
//登录按钮
- (UIButton *)loginBtn {
    if (!_loginBtn) {
        _loginBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
        _loginBtn.bounds = CGRectMake(0, 0, SCREEN_WIDTH * 0.7, SCREEN_HEIGHT * 0.1);
        _loginBtn.center = CGPointMake(SCREEN_WIDTH / 2, SCREEN_HEIGHT * 0.7);
        [_loginBtn setTitle:@"点击登录" forState:(UIControlStateNormal)];
        _loginBtn.backgroundColor = [UIColor blueColor];
        [_loginBtn addTarget:self action:@selector(clickLoginBtn) forControlEvents:(UIControlEventTouchUpInside)];
    }
    return _loginBtn;
}



@end
