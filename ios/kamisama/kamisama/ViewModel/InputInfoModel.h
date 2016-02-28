//
//  InputInfoModel.h
//  kamisama
//
//  Created by 東屋 百合絵 on 2016/02/28.
//  Copyright (c) 2016年 Ensui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InformationItem.h"

@interface InputInfoModel : NSObject
@property (nonatomic, readonly) BOOL isCalc;
@property (nonatomic, strong) InformationItem *result;
- (void)loadResult:(NSDictionary *)infoItem;

@end
