//
//  ViewController.m
//  015-ObjcPractice
//
//  Created by Takatoshi Miura on 2020/10/14.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - ライフサイクルメソッド

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // fullNameメソッドの動作テスト
    NSString *name = [self fullName:@"三浦" lastName:@"尊敏"];
    NSLog(@"フルネームは%@です。",name);
    
    // countUpメソッドの動作テスト
    for (int i = 0; i<=2; i++) {
        [self countUp];
    }
    NSLog(@"counterの数値は%dです",_counter);
    
}


#pragma mark - その他のメソッド

// フルネームを返すメソッド
- (NSString *)fullName:(NSString *)sei lastName:(NSString *)mei {
    NSString *sei_mei = [NSString stringWithFormat:@"%@ %@",sei,mei];
    return sei_mei;
}

// counterをカウントアップするメソッド
- (void)countUp {
    _counter++;
}

@end
