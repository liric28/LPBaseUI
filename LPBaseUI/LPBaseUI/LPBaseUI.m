//
//  LPBaseUI.m
//  ChatRoom
//
//  Created by mac on 2019/7/4.
//  Copyright © 2019 李盼. All rights reserved.
//

#import "LPBaseUI.h"

@implementation LPBaseUI

@end

@interface LPBaseUIImageViewMaker ()

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation LPBaseUIImageViewMaker

- (void)commit:(UIImageView *)imageView {
    self.imageView = imageView;
}

- (LPBaseUIImageViewMaker *(^)(UIImage *))image {
    return ^(UIImage *image) {
        self.imageView.image = image;
        return self;
    };
}

- (LPBaseUIImageViewMaker *(^)(void))contentModeCenter {
    return ^{
        self.imageView.contentMode = UIViewContentModeScaleAspectFill;
        self.imageView.clipsToBounds = YES;
        return self;
    };
}

- (LPBaseUIImageViewMaker *(^)(UIColor *))borderColor {
    return ^(UIColor *borderColor) {
        self.imageView.layer.borderColor = borderColor.CGColor;
        self.imageView.layer.borderWidth = 1/[UIScreen mainScreen].scale;
        return self;
    };
}

- (LPBaseUIImageViewMaker *(^)(CGFloat))cornerRadius {
    return ^(CGFloat cornerRadius) {
        self.imageView.layer.cornerRadius = cornerRadius;
        self.imageView.layer.masksToBounds = YES;
        return self;
    };
}

- (LPBaseUIImageViewMaker *(^)(UIColor *))backgroundColor {
    return ^(UIColor *backgroundColor) {
        self.imageView.backgroundColor = backgroundColor;
        return self;
    };
}

@end

@implementation UIImageView (LPBaseUIImageViewMaker)

+ (UIImageView *)imageView {
    return [[UIImageView alloc] init];
}

- (void)imageViewWithMaker:(void(^)(LPBaseUIImageViewMaker *make))block {
    LPBaseUIImageViewMaker *maker = [[LPBaseUIImageViewMaker alloc] init];
    [maker commit:self];
    if (block) block(maker);
}

@end

@interface LPBaseUIViewMaker ()

@property (nonatomic, strong) UIView *view;

@end

@implementation LPBaseUIViewMaker

- (void)commit:(UIView *)view {
    self.view = view;
}

- (LPBaseUIViewMaker *(^)(CGFloat))cornerRadius {
    return ^(CGFloat cornerRadius) {
        self.view.layer.cornerRadius = cornerRadius;
        self.view.layer.masksToBounds = YES;
        return self;
    };
}

- (LPBaseUIViewMaker *(^)(UIColor *))borderColor {
    return ^(UIColor *borderColor) {
        self.view.layer.borderColor = borderColor.CGColor;
        self.view.layer.borderWidth = 1/[UIScreen mainScreen].scale;
        return self;
    };
}

- (LPBaseUIViewMaker *(^)(UIColor *))backgroundColor {
    return ^(UIColor *backgroundColor) {
        self.view.backgroundColor = backgroundColor;
        return self;
    };
}

@end

@implementation UIView (LPBaseUIViewMaker)

+ (UIView *)view {
    return [[UIView alloc] init];
}

- (void)viewWithMaker:(void(^)(LPBaseUIViewMaker *make))block {
    LPBaseUIViewMaker *maker = [[LPBaseUIViewMaker alloc] init];
    [maker commit:self];
    if (block) block(maker);
}

@end

@interface LPBaseUILabelMaker ()

@property (nonatomic, strong) UILabel *label;

@end

@implementation LPBaseUILabelMaker

- (void)commit:(UILabel *)label {
    self.label = label;
}

- (LPBaseUILabelMaker *(^)(UIFont *))font {
    return ^(UIFont *font) {
        self.label.font = font;
        return self;
    };
}

- (LPBaseUILabelMaker *(^)(NSString *))text {
    return ^(NSString *text) {
        self.label.text = text;
        return self;
    };
}

- (LPBaseUILabelMaker *(^)(UIColor *))textColor {
    return ^(UIColor *textColor) {
        self.label.textColor = textColor;
        return self;
    };
}

- (LPBaseUILabelMaker *(^)(CGFloat))cornerRadius {
    return ^(CGFloat cornerRadius) {
        self.label.layer.cornerRadius = cornerRadius;
        self.label.layer.masksToBounds = YES;
        return self;
    };
}

- (LPBaseUILabelMaker *(^)(UIColor *))backgroundColor {
    return ^(UIColor *backgroundColor) {
        self.label.backgroundColor = backgroundColor;
        return self;
    };
}

- (LPBaseUILabelMaker *(^)(void))textAlignmentLeft {
    return ^{
        self.label.textAlignment = NSTextAlignmentLeft;
        return self;
    };
}

- (LPBaseUILabelMaker *(^)(void))textAlignmentRight {
    return ^{
        self.label.textAlignment = NSTextAlignmentRight;
        return self;
    };
}

- (LPBaseUILabelMaker *(^)(void))textAlignmentCenter {
    return ^{
        self.label.textAlignment = NSTextAlignmentCenter;
        return self;
    };
}

@end


@implementation UILabel (LPBaseUILabelMaker)

+ (UILabel *)label {
    return [[UILabel alloc] init];
}

- (void)labelWithMaker:(void(^)(LPBaseUILabelMaker *))block {
    LPBaseUILabelMaker *maker = [[LPBaseUILabelMaker alloc] init];
    [maker commit:self];
    if (block) block(maker);
}

@end

@interface LPBaseUIButtonMaker ()

@property (nonatomic, strong) UIButton *button;

@end

@implementation LPBaseUIButtonMaker

- (void)commit:(UIButton *)button {
    self.button = button;
}

- (LPBaseUIButtonMaker *(^)(UIFont *))font {
    return ^(UIFont *font) {
        self.button.titleLabel.font = font;
        return self;
    };
}

- (LPBaseUIButtonMaker *(^)(NSString *))text {
    return ^(NSString *text) {
        [self.button setTitle:text forState:UIControlStateNormal];
        return self;
    };
}

- (LPBaseUIButtonMaker *(^)(UIImage *))image {
    return ^(UIImage *image) {
        [self.button setImage:image forState:UIControlStateNormal];
        return self;
    };
}

- (LPBaseUIButtonMaker *(^)(UIColor *))textColor {
    return ^(UIColor *textColor) {
        [self.button setTitleColor:textColor forState:UIControlStateNormal];
        return self;
    };
}

- (LPBaseUIButtonMaker *(^)(UIImage *))backgroundImage {
    return ^(UIImage *image) {
        [self.button setBackgroundImage:image forState:UIControlStateNormal];
        return self;
    };
}

- (LPBaseUIButtonMaker *(^)(CGFloat))cornerRadius {
    return ^(CGFloat cornerRadius) {
        self.button.layer.cornerRadius = cornerRadius;
        self.button.layer.masksToBounds = YES;
        return self;
    };
}

- (LPBaseUIButtonMaker *(^)(UIColor *))backgroundColor {
    return ^(UIColor *backgroundColor) {
        self.button.backgroundColor = backgroundColor;
        return self;
    };
}

- (LPBaseUIButtonMaker *(^)(UIControlContentVerticalAlignment))verticalAlignment {
    return ^(UIControlContentVerticalAlignment verticalAlignment) {
        self.button.contentVerticalAlignment = verticalAlignment;
        return self;
    };
}

- (LPBaseUIButtonMaker *(^)(UIControlContentHorizontalAlignment))horizontalAlignment {
    return ^(UIControlContentHorizontalAlignment horizontalAlignment) {
        self.button.contentHorizontalAlignment = horizontalAlignment;
        return self;
    };
}

@end

@implementation UIButton (LPBaseUIButtonMaker)

+ (UIButton *)button {
    return [UIButton buttonWithType:UIButtonTypeCustom];
}

- (void)buttonWithMaker:(void(^)(LPBaseUIButtonMaker *make))block {
    LPBaseUIButtonMaker *maker = [[LPBaseUIButtonMaker alloc] init];
    [maker commit:self];
    if (block) block(maker);
}

@end

