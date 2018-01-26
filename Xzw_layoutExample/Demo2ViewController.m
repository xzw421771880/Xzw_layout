//
//  Demo2ViewController.m
//  Xzw_layoutExample
//
//  Created by mc on 2018/1/26.
//  Copyright © 2018年 肖中旺. All rights reserved.
//

#import "Demo2ViewController.h"

#import "xzw_outoView.h"
#import "xzw_Header.h"

@interface Demo2ViewController ()

@end

@implementation Demo2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"demo2";
    self.view.backgroundColor=[UIColor whiteColor];
    // Do any additional setup after loading the view.
    
    NSArray *ary=@[@"023",@"1",@"4442",@"3",@"45555",@"5",@"6",@"7",@"8",@"023",@"1",@"4442",@"3",@"45555",@"5",@"6",@"7",@"8",@"023",@"1",@"4442",@"3",@"45555",@"5",@"6",@"7",@"8",@"023",@"1",@"4442",@"3",@"45555",@"5",@"6",@"7",@"8"];
    
    xzw_outoView *xzw=[[xzw_outoView alloc]initWithFrame:Frame(0, 104, WIDTH, HEIGHT-104) andArray:ary];
    [self.view addSubview:xzw];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
