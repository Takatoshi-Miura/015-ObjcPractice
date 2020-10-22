//
//  TomboViewController.m
//  015-ObjcPractice
//
//  Created by Takatoshi Miura on 2020/10/22.
//

#import "TomboViewController.h"

@interface TomboViewController()

// プロパティの宣言
@property (weak, nonatomic) IBOutlet UIImageView *tomboImage;

// メソッドの宣言
- (IBAction)tapView:(UITapGestureRecognizer *)sender;
- (IBAction)tapTombo:(UITapGestureRecognizer *)sender;

@end



@implementation TomboViewController

// トンボをタップした時の処理
- (IBAction)tapTombo:(UITapGestureRecognizer *)sender {
    [self moveTomboRandom];
}

// ビューをタップした時の処理
- (IBAction)tapView:(UITapGestureRecognizer *)sender {
    [self moveTomboTapLocation:sender];
}



// トンボをランダムな位置に移動するメソッド
- (void)moveTomboRandom {
    // サイズの取得
    CGFloat tomboWidth  = _tomboImage.bounds.size.width;
    CGFloat tomboHeight = _tomboImage.bounds.size.height;
    
    // 移動可能な領域のサイズ
    NSInteger width  = floor(self.view.bounds.size.width - tomboWidth);
    NSInteger height = floor(self.view.bounds.size.height - tomboHeight);
    
    // ランダムな位置にトンボを移動
    CGFloat x = (arc4random() % width) + tomboWidth/2;
    CGFloat y = (arc4random() % height) + tomboHeight/2;
    _tomboImage.center = CGPointMake(x, y);
}

// タップした位置にトンボを移動させるメソッド
- (void)moveTomboTapLocation:(UITapGestureRecognizer *)sender {
    // タップされた座標を取得
    CGPoint tapLocation = [sender locationInView:self.view];
    
    // タップされた座標にトンボを移動する
    _tomboImage.center = tapLocation;
}

@end
