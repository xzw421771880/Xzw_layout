//
//  xzw_Header.h
//  Xzw_layoutExample
//
//  Created by mc on 2018/1/26.
//  Copyright © 2018年 肖中旺. All rights reserved.
//

#ifndef xzw_Header_h
#define xzw_Header_h

#import "UIView+xzw_layout.h"
#import "UILabel+xzw_layout.h"


#define WIDTH  [UIScreen mainScreen].bounds.size.width
#define HEIGHT  [UIScreen mainScreen].bounds.size.height

//控件大小
#define Frame(x,y,w,h)   CGRectMake(x, y, w, h)

//字体大小
#define FONT(s)          [UIFont systemFontOfSize:s]




#endif /* xzw_Header_h */
