//
//  ViewController.m
//  LDCopying
//
//  Created by lidi on 2019/1/25.
//  Copyright © 2019 Li. All rights reserved.
//

#import "ViewController.h"
#import "UserInfo.h"
#import "NSObject+LDCopying/NSObject+LDCopying.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UserInfo *user = [[UserInfo alloc]init];
    NSString *siteID = [NSString stringWithFormat:@"3232"];
    NSLog(@"%p",siteID);
    user.siteId = siteID;
    user.nickname = @"karl";
    user.isVIP = 0;
    user.age = 17;
    user.bornDate = [NSDate new];
//    user.skill = @selector(eat);
    UserInfo *user1 = [[UserInfo alloc]init];
    user1.siteId = @"siteId93828";
    user1.nickname = @"jack";
    user1.members = [NSMutableArray arrayWithArray:@[@3,@4]];
    user1.car = [[Car alloc]init];
    user1.car.name = @"jeep";
    user.members = [NSMutableArray arrayWithArray:@[@{@"key1":@"value1",@"key2":@[@1,@2,@99]},@2,@{@"NO":@NO,@"Yes":@YES,@"user":user1}]];
    NSLog(@"%@，%@",user,user.siteId);
    UserInfo *copyUser = [user LDDeepCopy];
    UserInfo *copyUser1 = [copyUser.members[2] objectForKey:@"user"];
    [copyUser1.members addObject:@"isMutableArray"];
    NSLog(@"%@，%@ , %@",copyUser,copyUser.siteId,copyUser1.car.name);
    

}

@end
