//
//  ViewController.m
//  DDPopView
//
//  Created by 郭嘉 on 2017/3/28.
//  Copyright © 2017年 郭嘉. All rights reserved.
//

#import "ViewController.h"
#import "CustomAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton  new];
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor blackColor];
    btn.frame =  CGRectMake(100, 100, 160, 60);
    [btn setTitle:@"点我" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnclick) forControlEvents:UIControlEventTouchUpInside];
    
}
- (void)btnclick
{
    
    CustomAlertView *alert = [[CustomAlertView alloc] initWithAlertViewHeight:320];
    
    alert.ButtonClick = ^void(UIButton*button){
        NSLog(@"%ld",(long)button.tag);
        
        if (button.tag==100) {
            //look  rili
            
        }
    };
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
