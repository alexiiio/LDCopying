//
//  Car.m
//  LDCopying
//
//  Created by lidi on 2019/4/8.
//  Copyright © 2019 Li. All rights reserved.
//

#import "Car.h"
#import "NSObject+LDCopying/NSObject+LDCopying.h"

@implementation Car
- (id)LDDeepCopy {
    Car *car = [[Car alloc]init];
    car.name = [self.name stringByAppendingString:@"_Copy"];
    return car;
}
@end
