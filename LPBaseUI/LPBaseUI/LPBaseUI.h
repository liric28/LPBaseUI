//
//  LPBaseUI.h
//  ChatRoom
//
//  Created by mac on 2019/7/4.
//  Copyright © 2019 李盼. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LPBaseUI : NSObject

@end

@interface LPBaseUIImageViewMaker : NSObject

- (LPBaseUIImageViewMaker *(^)(UIImage *image))image;
- (LPBaseUIImageViewMaker *(^)(void))contentModeCenter;
- (LPBaseUIImageViewMaker *(^)(UIColor *borderColor))borderColor;
- (LPBaseUIImageViewMaker *(^)(CGFloat cornerRadius))cornerRadius;
- (LPBaseUIImageViewMaker *(^)(UIColor *backgroundColor))backgroundColor;

@end

@interface UIImageView (LPBaseUIImageViewMaker)

+ (UIImageView *)imageView;
- (void)imageViewWithMaker:(void(^)(LPBaseUIImageViewMaker *make))block;

@end

@interface LPBaseUIViewMaker : NSObject

- (LPBaseUIViewMaker *(^)(UIColor *borderColor))borderColor;
- (LPBaseUIViewMaker *(^)(CGFloat cornerRadius))cornerRadius;
- (LPBaseUIViewMaker *(^)(UIColor *backgroundColor))backgroundColor;

@end

@interface UIView (LPBaseUIViewMaker)

+ (UIView *)view;
- (void)viewWithMaker:(void(^)(LPBaseUIViewMaker *make))block;

@end

@interface LPBaseUILabelMaker : NSObject

- (LPBaseUILabelMaker *(^)(UIFont *font))font;
- (LPBaseUILabelMaker *(^)(NSString *text))text;
- (LPBaseUILabelMaker *(^)(UIColor *textColor))textColor;
- (LPBaseUILabelMaker *(^)(CGFloat cornerRadius))cornerRadius;
- (LPBaseUILabelMaker *(^)(UIColor *backgroundColor))backgroundColor;
- (LPBaseUILabelMaker *(^)(void))textAlignmentLeft;
- (LPBaseUILabelMaker *(^)(void))textAlignmentRight;
- (LPBaseUILabelMaker *(^)(void))textAlignmentCenter;

@end

@interface UILabel (LPBaseUILabelMaker)

+ (UILabel *)label;
- (void)labelWithMaker:(void(^)(LPBaseUILabelMaker *make))block;

@end

@interface LPBaseUIButtonMaker : NSObject

- (LPBaseUIButtonMaker *(^)(UIFont *font))font;
- (LPBaseUIButtonMaker *(^)(NSString *text))text;
- (LPBaseUIButtonMaker *(^)(UIImage *image))image;
- (LPBaseUIButtonMaker *(^)(UIColor *textColor))textColor;
- (LPBaseUIButtonMaker *(^)(UIImage *image))backgroundImage;
- (LPBaseUIButtonMaker *(^)(CGFloat cornerRadius))cornerRadius;
- (LPBaseUIButtonMaker *(^)(UIColor *backgroundColor))backgroundColor;
- (LPBaseUIButtonMaker *(^)(UIControlContentVerticalAlignment verticalAlignment))verticalAlignment;
- (LPBaseUIButtonMaker *(^)(UIControlContentHorizontalAlignment horizontalAlignment))horizontalAlignment;

@end

@interface UIButton (LPBaseUIButtonMaker)

+ (UIButton *)button;
- (void)buttonWithMaker:(void(^)(LPBaseUIButtonMaker *make))block;

@end

NS_ASSUME_NONNULL_END
