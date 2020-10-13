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
    // Do any additional setup after loading the view.
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
