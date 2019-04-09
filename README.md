# LDCopying

[![Version](https://img.shields.io/cocoapods/v/LDCopying.svg?style=flat)](https://cocoapods.org/pods/LDCopying)
[![996.icu](https://img.shields.io/badge/link-996.icu-red.svg)](https://996.icu)

**LDCopying** is a category of NSObject. It provides an infinite layer deep copy of objects, include of custom objects and collection objects.


## Installation

LDCopying is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'LDCopying'
```
## Useage

Import the header file.

```
#import <NSObject+LDCopying.h>
```

Use `LDDeepCopy` instead of `copy` or `mutableCopy`.

```
[obj LDDeepCopy]
``` 
The obj must be key-value coding compliant.

If you want to customize the copy process for a class, you can override the `LDDeepCopy` method of that class. For example: 

```
@implementation Car
- (id)LDDeepCopy {
    Car *car = [[Car alloc]init];
    car.name = [self.name stringByAppendingString:@"_Copy"];
    return car;
}
@end
```

