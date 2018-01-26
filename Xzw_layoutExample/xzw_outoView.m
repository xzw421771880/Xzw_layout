//
//  xzw_outoView.m
//  Xzw_layoutExample
//
//  Created by mc on 2018/1/26.
//  Copyright © 2018年 肖中旺. All rights reserved.
//

#import "xzw_outoView.h"

#import "UILabel+xzw_layout.h"

@implementation xzw_outoView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithFrame:(CGRect)frame andArray:(NSArray *)ary
{
    if (self=[super initWithFrame:frame]) {
        self.backgroundColor=[UIColor whiteColor];
        [self addLabelWith:ary];
    }
    
    return self;
}
-(void)addLabelWith:(NSArray *)ary
{
    CGPoint orgxy=CGPointMake(10, 50);//起始位置
    for (int i=0; i<ary.count; i++) {
        UILabel *logLabel=[[UILabel alloc] init];
        logLabel.text=ary[i];
        logLabel.backgroundColor=[UIColor grayColor];
        orgxy=[logLabel nextOrgin:orgxy];//适配
        //        [logLabel addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tagDidCLick:)]];
        //        logLabel.userInteractionEnabled=YES;
        [self addSubview:logLabel];
    }
}

@end
