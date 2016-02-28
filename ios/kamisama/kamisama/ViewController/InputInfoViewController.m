//
//  InputInfoViewController.m
//  kamisama
//
//  Created by 東屋 百合絵 on 2016/02/28.
//  Copyright (c) 2016年 Ensui. All rights reserved.
//

#import "InputInfoViewController.h"
#import "InputInfoModel.h"
#import "ResultViewController.h"

@interface InputInfoViewController ()
@property (nonatomic, strong) InputInfoModel *model;
@end

@implementation InputInfoViewController

- (instancetype)init{

    if (self= [super init]) {
        _model = [[InputInfoModel alloc] init];
    }
    return  self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {

    [super viewWillAppear:animated];
    
    [_model addObserver:self forKeyPath:@"isCalc" options:NSKeyValueObservingOptionNew context:@selector(callBackCompleteLoadResult)];
    
}
- (void)viewWillDisappear:(BOOL)animated {

    [super viewWillDisappear:animated];
    [_model removeObserver:self forKeyPath:@"isCalc"];
    
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    [self performSelectorOnMainThread:(SEL)context withObject:change waitUntilDone:YES];
}

- (IBAction)onStartChoce:(id)sender {
    
    
    [_model loadResult:@{@"title":@"今日のランチ",@"choiceList":@[@"ハンバーグ",@"お寿司",@"ステーキ",@"ラーメン"]}];
}

-(void)callBackCompleteLoadResult {

    // 結果画面を表示
    ResultViewController *resultView = [[ResultViewController alloc] init];
    resultView.infoItem = _model.result; // 結果を引き渡す
    
    [self presentViewController:resultView animated:YES completion:nil];
    
}
@end
