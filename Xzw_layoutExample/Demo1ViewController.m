//
//  Demo1ViewController.m
//  Xzw_layoutExample
//
//  Created by mc on 2018/1/26.
//  Copyright © 2018年 肖中旺. All rights reserved.
//

#import "Demo1ViewController.h"

#import "xzw_Header.h"

@interface Demo1ViewController ()

@end

@implementation Demo1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"demo1";
    self.view.backgroundColor=[UIColor whiteColor];
    
    UILabel *label=[[UILabel alloc]initWithFrame:Frame(0, 100, 0, 80)];
    label.text=@"dsadasdasgfsghfdhgfkjluuyiuypoiudsadasdasgfsghfdhgfkjluuyiuypoiudsadasdasgfsghfdhgfkjluuyiuypoiudsadasdasgfsghfdhgfkjluuyiuypoiudsadasdasgfsghfdhgfkjluuyiuypoiudsadasdasgfsghfdhgfkjluuyiuypoiudsadasdasgfsghfdhgfkjluuyiuypoiudsadasdasgfsghfdhgfkjluuyiuypoiudsadasdasgfsghfdhgfkjluuyiuypoiudsadasdasgfsghfdhgfkjluuyiuypoiudsadasdasgfsghfdhgfkjluuyiuypoiudsadasdasgfsghfdhgfkjluuyiuypoiudsadasdasgfsghfdhgfkjluuyiuypoiudsadasdasgfsghfdhgfkjluuyiuypoiudsadasdasgfsghfdhgfkjluuyiuypoiudsadasdasgfsghfdhgfkjluuyiuypoiudsadasdasgfsghfdhgfkjluuyiuypoiudsadasdasgfsghfdhgfkjluuyiuypoiudsadasdasgfsghfdhgfkjluuyiuypoiudsadasdasgfsghfdhgfkjluuyiuypoiudsadasdasgfsghfdhgfkjluuyiuypoiudsadasdasgfsghfdhgfkjluuyiuypoiudsadasdasgfsghfdhgfkjluuyiuypoiudsadasdasgfsghfdhgfkjluuyiuypoiudsadasdasgfsghfdhgfkjluuyiuypoiu";
    label.backgroundColor=[UIColor grayColor];
    label.numberOfLines=0;
    label.font=FONT(20);
    [self.view addSubview:label];
    
        //自动高度
        [label autoWidth];
    // Do any additional setup after loading the view.
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
