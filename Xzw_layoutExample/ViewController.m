//
//  ViewController.m
//  Xzw_layoutExample
//
//  Created by mc on 2018/1/25.
//  Copyright © 2018年 肖中旺. All rights reserved.
//

#import "ViewController.h"
#import "xzw_Header.h"



#import "Demo1ViewController.h"
#import "Demo2ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor whiteColor];

    
//    NSArray *ary=@[@"dsd",@"dsd",@"dsd",@"dsd",@"drrtsd",@"dsdshhhjr",@"dsd",@"dsd",@"dsdsd",@"dsd",@"dsd",@"dsd",@"dsd"];
//
//    [self addLabelwithAry:ary];
    
    [self addDemo1];
    [self addDemo2];
}


-(void)addDemo1
{
    UILabel *demo1Label=[[UILabel alloc]initWithFrame:Frame(10, 104, WIDTH-20, 35)];
    demo1Label.text=@"demo1";
    demo1Label.textAlignment=YES;
    demo1Label.backgroundColor=[UIColor grayColor];
    [self.view addSubview:demo1Label];
    
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(pushDemo1)];
    [demo1Label addGestureRecognizer:tap];
    demo1Label.userInteractionEnabled=YES;
    
}

-(void)pushDemo1
{
    Demo1ViewController *vc=[[Demo1ViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}


-(void)addDemo2
{
    UILabel *demo2Label=[[UILabel alloc]initWithFrame:Frame(10, 160, WIDTH-20, 35)];
    demo2Label.text=@"demo2";
    demo2Label.textAlignment=YES;
    demo2Label.backgroundColor=[UIColor grayColor];
    [self.view addSubview:demo2Label];
    
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(pushDemo2)];
    [demo2Label addGestureRecognizer:tap];
    demo2Label.userInteractionEnabled=YES;
    
}

-(void)pushDemo2
{
    Demo2ViewController *vc=[[Demo2ViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
////热门搜索
//-(void)addLabelwithAry:(NSArray *)ary{
//    CGPoint orgxy=CGPointMake(10, 50);//起始位置
//    for (int i=0; i<ary.count; i++) {
//        UILabel *logLabel=[[UILabel alloc] init];
//        logLabel.text=ary[i];
//        orgxy=[logLabel nextOrgin:orgxy];//适配
////        [logLabel addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tagDidCLick:)]];
////        logLabel.userInteractionEnabled=YES;
//        [self.view addSubview:logLabel];
//    }
////    [self.view addtableView:orgxy];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
