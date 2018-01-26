//
//  UILabel+xzw_layout.m
//  Xzw_layoutExample
//
//  Created by mc on 2018/1/26.
//  Copyright © 2018年 肖中旺. All rights reserved.
//

#import "UILabel+xzw_layout.h"
#import "UIView+xzw_layout.h"
#import "xzw_Header.h"


#define labelHeight 30//label
#define spaceX 10
#define spaceY 10

@implementation UILabel (xzw_layout)


//自动宽度
- (void)autoWidth
{
    self.xzw_s=[self sizeWithString];
}

//右对齐
-(void)rightWithJuli:(float)a
{
    CGSize labelsize =[self sizeWithString];
    self.frame =Frame(WIDTH -labelsize.width -a, self.frame.origin.y, labelsize.width, self.frame.size.height);
}

//紧跟label
-(void)followLabel:(UILabel *)label
{
    CGSize sizexy=[self sizeWithString];
    //8是前后两个控件之间的距离
    self.frame=Frame(label.frame.origin.x+label.frame.size.width+8, self.frame.origin.y, sizexy.width, self.frame.size.height);
}

//求出label的长度
- (CGSize)sizeWithString
{
    CGRect rect = [self.text boundingRectWithSize:CGSizeMake(WIDTH, 8000)//限制最大的宽度和高度
                                       options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesFontLeading  |NSStringDrawingUsesLineFragmentOrigin//采用换行模式
                                    attributes:@{NSFontAttributeName: self.font}//传人的字体字典
                                       context:nil];
    return rect.size;
}



//循环制造控件自排列
- (CGPoint)nextOrgin:(CGPoint )point
{
    CGSize sizexy=[self sizeWithString];
    NSLog(@"width==%f",sizexy.width);
    //判断是否换行
    if (point.x+sizexy.width+10>WIDTH) {
        //换行
        self.frame=Frame(spaceX, point.y+labelHeight+spaceY, sizexy.width, labelHeight);
        point=CGPointMake(2*spaceX+sizexy.width, point.y+labelHeight+spaceY);
    }else{
        //不换行
        self.frame=Frame(point.x, point.y, sizexy.width, labelHeight);
        point=CGPointMake(sizexy.width+point.x+spaceX, point.y);
    }
    return point;
}
@end
