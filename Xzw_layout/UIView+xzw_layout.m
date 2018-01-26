//
//  UIView+xzw_layout.m
//  Xzw_layoutExample
//
//  Created by mc on 2018/1/26.
//  Copyright © 2018年 肖中旺. All rights reserved.
//

#import "UIView+xzw_layout.h"

@implementation UIView (xzw_layout)


/// 获取视图宽度
- (void)setXzw_w:(CGFloat)xzw_w {
    CGRect rect = self.frame;
    rect.size.width = xzw_w;
    self.frame = rect;
}

- (CGFloat)xzw_w {
    return CGRectGetWidth(self.frame);
}

/// 获取视图高度
- (void)setXzw_h:(CGFloat)xzw_h {
    CGRect rect = self.frame;
    rect.size.height = xzw_h;
    self.frame = rect;
}

- (CGFloat)xzw_h {
    return CGRectGetHeight(self.frame);
}

/// 获取视图x
- (void)setXzw_x:(CGFloat)xzw_x {
    CGRect rect = self.frame;
    rect.origin.x = xzw_x;
    self.frame = rect;
}

- (CGFloat)xzw_x {
    return CGRectGetMinX(self.frame);
}


/// 获取视图y
- (void)setWhc_y:(CGFloat)whc_y {
    CGRect rect = self.frame;
    rect.origin.y = whc_y;
    self.frame = rect;
}
- (CGFloat)whc_y {
    return CGRectGetMinY(self.frame);
}


/// 获取视图最大x
- (void)setXzw_maxX:(CGFloat)xzw_maxX {
    self.xzw_w = xzw_maxX - self.xzw_x;
}
- (CGFloat)xzw_maxX {
    return CGRectGetMaxX(self.frame);
}

/// 获取视图最大y
- (void)setXzw_maxY:(CGFloat)xzw_maxY {
    self.xzw_h = xzw_maxY - self.xzw_y;
}
- (CGFloat)xzw_maxY {
    return CGRectGetMaxY(self.frame);
}


/// 获取视图中间x
- (void)setXzw_midX:(CGFloat)xzw_midX {
    self.xzw_w = xzw_midX * 2;
}
- (CGFloat)xzw_midX {
    return CGRectGetMinX(self.frame) + CGRectGetWidth(self.frame) / 2;
}


/// 获取视图中间y
- (void)setXzw_midY:(CGFloat)xzw_midY {
    self.xzw_h = xzw_midY * 2;
}
- (CGFloat)xzw_midY {
    return CGRectGetMinY(self.frame) + CGRectGetHeight(self.frame) / 2;
}


/// 获取视图中心x
#if TARGET_OS_IPHONE || TARGET_OS_TV
- (void)setXzw_cx:(CGFloat)xzw_cx {
    CGPoint center = self.center;
    center.x = xzw_cx;
    self.center = center;
}
- (CGFloat)xzw_cx {
    return self.center.x;
}


/// 获取视图中心y
- (void)setXzw_cy:(CGFloat)xzw_cy {
    CGPoint center = self.center;
    center.y = xzw_cy;
    self.center = center;
}
- (CGFloat)xzw_cy {
    return self.center.y;
}


/// 获取视图xy
#endif
- (void)setXzw_xy:(CGPoint)xzw_xy {
    CGRect rect = self.frame;
    rect.origin = xzw_xy;
    self.frame = rect;
}
- (CGPoint)xzw_xy {
    return self.frame.origin;
}


/// 获取视图size
- (void)setXzw_s:(CGSize)xzw_s {
    CGRect rect = self.frame;
    rect.size = xzw_s;
    self.frame = rect;
}
- (CGSize)xzw_s {
    return self.frame.size;
}

#pragma mark - 变圆
- (void)circle {
    self.layer.cornerRadius =self.frame.size.height/2;
    self.layer.masksToBounds =YES;
}

#pragma mark - 保持
- (void)keep{
    self.contentMode =UIViewContentModeScaleAspectFit;
}



@end
