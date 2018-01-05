//
//  SNNavigationBar.m
//  SuningEBuy
//
//  Created by xzoscar on 15/12/31.
//  Copyright © 2015年 苏宁易购. All rights reserved.
//

#import "SNNavigationBar.h"

@interface SNNavigationBar ()
@property (nonatomic,strong) UIView   *mBarItem;
@property (nonatomic,strong) UIButton *mBackButton;
@property (nonatomic,strong) UIButton *mRightButton;
@property (nonatomic,strong) UILabel  *mTitleLabel;
@property (nonatomic,strong) UIView   *mBottomLine;
@property (nonatomic,strong) UILabel  *mUnreadLabel;

@end


@implementation SNNavigationBar

+ (SNNavigationBar *)navigationBar {
    SNNavigationBar *bar = [[SNNavigationBar alloc] init];
    
    CGSize sz = [UIScreen mainScreen].bounds.size;
    bar.frame = CGRectMake(.0f,.0f, sz.width, [[UIApplication sharedApplication] statusBarFrame].size.height + 44.0f);
    return bar;
}

- (UIView *)barItem {
    return self.mBarItem;
}

- (UIButton *)backButton {
    return self.mBackButton;
}

- (UIButton *)rightButton {
    return self.mRightButton;
}

- (UILabel *)unreadLabel {
    return self.mUnreadLabel;
}

- (UILabel *)titleLabel {
    return self.mTitleLabel;
}

- (UIView *)bottomLine {
    return self.mBottomLine;
}

- (UIButton *)mBackButton {
    if (nil == _mBackButton) {
        _mBackButton = [[UIButton alloc] initWithFrame:CGRectMake(.0f,.0f,44.0f,44.0f)];
        [_mBackButton setImage:[UIImage imageNamed:@"snc_navBack"]
                      forState:UIControlStateNormal];
        [_mBackButton setImage:[UIImage imageNamed:@"snc_navBack_hl"]
                      forState:UIControlStateHighlighted];
    }
    return _mBackButton;
}

- (UIButton *)mRightButton {
    if (nil == _mRightButton) {
        CGSize sz = [UIScreen mainScreen].bounds.size;
        _mRightButton = [[UIButton alloc] initWithFrame:CGRectMake(sz.width-44.0f,.0f,44.0f,44.0f)];
        [_mRightButton setImage:[UIImage imageNamed:@"snc_navMore_more"]
                      forState:UIControlStateNormal];
        [_mRightButton setImage:[UIImage imageNamed:@"snc_navMore_more_hl"]
                      forState:UIControlStateHighlighted];
    }
    return _mRightButton;
}

- (UILabel *)mUnreadLabel {
    if (nil == _mUnreadLabel) {
        CGSize sz = [UIScreen mainScreen].bounds.size;
        _mUnreadLabel = [[UILabel alloc] init];
        _mUnreadLabel.frame = CGRectMake(sz.width-16.0f,6.0f,8.0f,8.0f);
        _mUnreadLabel.backgroundColor = [UIColor colorWithRed:248/255.0f green:5/255.0f blue:49/255.0f
                                                        alpha:1.0f];
        _mUnreadLabel.layer.cornerRadius = 4.0f;
        _mUnreadLabel.hidden = YES;
    }
    return _mUnreadLabel;
}


- (UILabel *)mTitleLabel {
    if (nil == _mTitleLabel) {
        CGSize sz = [UIScreen mainScreen].bounds.size;
        _mTitleLabel = [[UILabel alloc] init];
        _mTitleLabel.frame = CGRectMake(44.0f,.0f,sz.width-88.0f,44.0f);
        _mTitleLabel.textAlignment = NSTextAlignmentCenter;
        _mTitleLabel.textColor = [UIColor colorWithRed:51/255.0f green:51/255.0f  blue:51/255.0f  alpha:1];
        _mTitleLabel.font      = [UIFont systemFontOfSize:16.0f];
        _mTitleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    return _mTitleLabel;
}

- (UIView *)mBarItem {
    if (nil == _mBarItem) {
        CGSize sz = [UIScreen mainScreen].bounds.size;
        _mBarItem = [[UIView alloc] initWithFrame:CGRectMake(.0f,[[UIApplication sharedApplication] statusBarFrame].size.height,sz.width,44.0f)];
        _mBarItem.backgroundColor = [UIColor whiteColor];
    }
    return _mBarItem;
}

- (UIView *)mBottomLine {
    if (nil == _mBottomLine) {
        CGSize sz   = [UIScreen mainScreen].bounds.size;
        _mBottomLine = [[UIView alloc] initWithFrame:CGRectMake(.0f,[[UIApplication sharedApplication] statusBarFrame].size.height + 43.5f,sz.width,0.5)];
        UIColor *color = [UIColor colorWithRed:230/255.0f green:230/255.0f blue:230/255.0f alpha:1.0f];
        _mBottomLine.backgroundColor = color;
    }
    return _mBottomLine;
}

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        
        [self.barItem addSubview:self.backButton];
        [self.barItem addSubview:self.titleLabel];
        [self.barItem addSubview:self.rightButton];
        [self.barItem addSubview:self.mUnreadLabel];
        
        [self addSubview:self.barItem];
        [self addSubview:self.bottomLine];
       
    }
    return self;
}

@end
