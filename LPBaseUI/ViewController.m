//
//  ViewController.m
//  LPBaseUI
//
//  Created by mac on 2019/7/6.
//  Copyright © 2019 李盼. All rights reserved.
//

#import "ViewController.h"
#import "LPBaseUI.h"
#import <Masonry/Masonry.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // DEMO
    UIView *view = [UIView view];
    [view viewWithMaker:^(LPBaseUIViewMaker * _Nonnull make) {
        make.cornerRadius(10).backgroundColor([UIColor redColor]);
    }];
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.view);
        make.leading.equalTo(self.view).offset(30);
        make.trailing.equalTo(self.view).offset(-30);
        make.height.mas_equalTo(44);
    }];
    
    // COOL
    UILabel *label = [UILabel label];
    [label labelWithMaker:^(LPBaseUILabelMaker * _Nonnull make) {
        make.text(@"COOL").font([UIFont systemFontOfSize:30]);
        make.backgroundColor([UIColor blueColor]).cornerRadius(15);
        make.textColor([UIColor whiteColor]).textAlignmentCenter();
    }];
    [self.view addSubview:label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.equalTo(view);
        make.top.equalTo(view.mas_bottom).offset(40);
    }];
}


@end
