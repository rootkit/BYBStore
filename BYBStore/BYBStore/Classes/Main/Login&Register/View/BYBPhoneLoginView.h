//
//  BYBPhoneLoginView.h
//  BYBStore
//
//  Created by 晓梦影 on 2017/9/23.
//  Copyright © 2017年 BYBStore. All rights reserved.
//

#import "BYBBaseView.h"

@interface BYBPhoneLoginView : BYBBaseView
/** 登录*/
@property (nonatomic, copy) void(^loginBlock)();
@end
