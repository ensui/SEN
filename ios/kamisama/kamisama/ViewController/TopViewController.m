//
//  TopViewController.m
//  kamisama
//
//  Created by 東屋 百合絵 on 2016/02/28.
//  Copyright (c) 2016年 Ensui. All rights reserved.
//

#import "TopViewController.h"
#import "InputInfoViewController.h"

@interface TopViewController ()

@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
- (IBAction)onStartButton:(id)sender {
    // 情報入力画面に移る
    InputInfoViewController *inputView = [[InputInfoViewController alloc] init];
    [self.navigationController pushViewController:inputView animated:YES];
}

- (IBAction)onHistoryButton:(id)sender {
    // 履歴画面に移る
}
- (IBAction)onOptionButton:(id)sender {
    // オプション画面に移る
}

@end
