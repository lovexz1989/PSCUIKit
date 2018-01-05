//
//  SNNavigationBar.h
//  SuningEBuy
//
//  Created by xzoscar on 15/12/31.
//  Copyright © 2015年 苏宁易购. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SNNavigationBar : UIView

@property (nonatomic,strong,readonly) UIView   *barItem;
@property (nonatomic,strong,readonly) UIButton *backButton;
@property (nonatomic,strong,readonly) UIButton *rightButton;
@property (nonatomic,strong,readonly) UILabel  *titleLabel;
@property (nonatomic,strong,readonly) UIView   *bottomLine;

// 红点 default hidden = YES
@property (nonatomic,strong,readonly) UILabel  *unreadLabel;

+ (SNNavigationBar *)navigationBar;

@end
