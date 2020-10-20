//
//  Hello.m
//  015-ObjcPractice
//
//  Created by Takatoshi Miura on 2020/10/21.
//

#import <Foundation/Foundation.h>
#import "Hello.h"

@implementation Hello

// helloメソッド
- (NSString *)hello:(NSString *)who {
    NSString *msg = [NSString stringWithFormat:@"Hello,%@の%@さん",_where,who];
    return  msg;
}


@end
