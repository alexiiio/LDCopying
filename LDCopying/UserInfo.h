//
//  UserInfo.h
//  LDCopying
//
//  Created by lidi on 2019/1/25.
//  Copyright © 2019 Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"


@interface UserInfo : NSObject
@property(nonatomic,copy)NSString* nickname;
@property(nonatomic,assign)BOOL isVIP;
@property(nonatomic,assign)NSInteger age;
@property(nonatomic,copy)NSString* siteId;
@property(nonatomic,copy)NSDate *bornDate;
@property(nonatomic,strong)NSMutableArray *members;
@property(nonatomic,strong)Car *car;
//@property(nonatomic,assign)SEL skill;   // 不符合KVC遵从性

@end


