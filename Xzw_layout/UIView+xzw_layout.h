//
//  UIView+xzw_layout.h
//  Xzw_layoutExample
//
//  Created by mc on 2018/1/26.
//  Copyright © 2018年 肖中旺. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (xzw_layout)

/// 获取视图宽度
@property (nonatomic, assign)CGFloat xzw_w;
/// 获取视图高度
@property (nonatomic, assign)CGFloat xzw_h;

/// 获取视图x
@property (nonatomic, assign)CGFloat xzw_x;
/// 获取视图y
@property (nonatomic, assign)CGFloat xzw_y;

/// 获取视图最大x
@property (nonatomic, assign)CGFloat xzw_maxX;
/// 获取视图最大y
@property (nonatomic, assign)CGFloat xzw_maxY;

/// 获取视图中间x
@property (nonatomic, assign)CGFloat xzw_midX;
/// 获取视图中间y
@property (nonatomic, assign)CGFloat xzw_midY;


#if TARGET_OS_IPHONE || TARGET_OS_TV
/// 获取视图中心x
@property (nonatomic, assign)CGFloat xzw_cx;
/// 获取视图中心y
@property (nonatomic, assign)CGFloat xzw_cy;
#endif


/// 获取视图xy
@property (nonatomic, assign)CGPoint xzw_xy;
/// 获取视图size
@property (nonatomic, assign)CGSize  xzw_s;

// mark - 变圆
- (void)circle;

// mark - 保持
- (void)keep;

@end
