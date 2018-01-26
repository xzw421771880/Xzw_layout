//
//  UILabel+xzw_layout.h
//  Xzw_layoutExample
//
//  Created by mc on 2018/1/26.
//  Copyright © 2018年 肖中旺. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (xzw_layout)

//右对齐
-(void)rightWithJuli:(float)a;

//自动宽度
- (void)autoWidth;


//紧跟label
-(void)followLabel:(UILabel *)label;

//循环制造控件自排列
- (CGPoint)nextOrgin:(CGPoint )point;

@end
