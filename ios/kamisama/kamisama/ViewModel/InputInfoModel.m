//
//  InputInfoModel.m
//  kamisama
//
//  Created by 東屋 百合絵 on 2016/02/28.
//  Copyright (c) 2016年 Ensui. All rights reserved.
//

#import "InputInfoModel.h"

@interface InputInfoModel ()
@property (nonatomic, readwrite) BOOL isCalc;

@end

@implementation InputInfoModel

- (instancetype)init {

    self = [super init];
    if (self) {
        self.isCalc = NO;
        self.result = [[InformationItem alloc] init];
    }
    return self;
}

- (void)loadResult:(NSDictionary*)infoItem {
    NSString *titelName = [infoItem objectForKey:@"title"];
    NSArray *choices = [infoItem objectForKey:@"choiceList"];

    int index = (int)arc4random_uniform((u_int32_t)choices.count);
    
    _result.title = titelName;
    _result.resultChoice = choices[index];
    self.isCalc = YES;
    return;
}
@end
