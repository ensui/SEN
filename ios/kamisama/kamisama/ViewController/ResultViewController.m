    //
//  ResultViewController.m
//  kamisama
//
//  Created by 東屋 百合絵 on 2016/02/28.
//  Copyright (c) 2016年 Ensui. All rights reserved.
//

#import "ResultViewController.h"

@interface ResultViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *choiceLabel;

@end

@implementation ResultViewController
- (void)dealloc {
    _infoItem = nil;
}

- (instancetype)init {
    if (self = [super init]) {
        _infoItem = [[InformationItem alloc] init];
    }
    
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    _titleLabel.text = [NSString stringWithFormat:@"%@には", _infoItem.title];
    _choiceLabel.text = [NSString stringWithFormat:@"%@を", _infoItem.resultChoice];
    
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
