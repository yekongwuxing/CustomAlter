//
//  ViewController.m
//  CustomAlter
//
//  Created by jiangmm on 17/4/7.
//  Copyright © 2017年 jchvip.rch. All rights reserved.
//

#import "ViewController.h"
#import "AlterSingleViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(50, 50, 150, 50);
    [btn setTitle:@"弹出自定义弹框" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick
{
    AlterSingleViewController *vc = [[AlterSingleViewController alloc] init];
    vc.view.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.45 ];
    vc.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    [self presentViewController: vc animated:YES completion:nil];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
