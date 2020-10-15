//
//  ViewController.m
//  015-ObjcPractice
//
//  Created by Takatoshi Miura on 2020/10/14.
//

#import "ViewController.h"

@interface ViewController ()

#pragma mark - UIの設定

// テキストフィールド
@property (weak, nonatomic) IBOutlet UITextField *textField;

// スライダー
@property (weak, nonatomic) IBOutlet UISlider *slider;
- (IBAction)updateValue:(id)sender;


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
    
    // テキストフィールドテスト
    _textField.text = @"textFieldテスト";
    _textField.textColor = [UIColor systemBlueColor];
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

// スライダーの値を更新するメソッド
- (IBAction)updateValue:(id)sender {
    NSLog(@"%.1f %%", _slider.value * 100);
}

@end
