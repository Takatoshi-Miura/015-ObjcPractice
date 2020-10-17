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
@property (strong, nonatomic) IBOutletCollection(UITextField) NSArray *colorNames;


// スライダー
@property (weak, nonatomic) IBOutlet UISlider *slider;
- (IBAction)updateValue:(id)sender;

// スライダー値表示ラベル
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;

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
    NSLog(@"counterの数値は%ldです",(long)_counter);
    
    // テキストフィールドテスト
    _textField.text = @"textFieldテスト";
    _textField.textColor = [UIColor systemBlueColor];
    
    // アウトレットコレクションテスト
    for (UITextField *fld in _colorNames) {
        fld.placeholder = @"好きな色は何ですか？";
    }
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

// スライダーの値をラベルに表示するメソッド
- (IBAction)updateValue:(id)sender {
    NSLog(@"%.1f %%", _slider.value * 100);
    _sliderLabel.text = [NSString stringWithFormat:@"%.2f %%",_slider.value * 100];
}

@end
