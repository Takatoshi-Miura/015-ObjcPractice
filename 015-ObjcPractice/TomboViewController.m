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
- (IBAction)doubleTapTombo:(UITapGestureRecognizer *)sender;

@end



@implementation TomboViewController

// トンボをダブルタップした時の処理
- (IBAction)doubleTapTombo:(UITapGestureRecognizer *)sender {
    [self zoomTombo:sender];
}

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

// トンボをタップした位置に移動させるメソッド
- (void)moveTomboTapLocation:(UITapGestureRecognizer *)sender {
    // タップされた座標を取得
    CGPoint tapLocation = [sender locationInView:self.view];
    
    // タップされた座標にトンボを移動する
    _tomboImage.center = tapLocation;
}

// トンボを拡大縮小する処理
- (void)zoomTombo:(UITapGestureRecognizer *)sender {
    // 拡大処理を適用、適用済みなら適用前に戻す
    UIImageView *tombo = (UIImageView *)sender.view;
    if (CGAffineTransformIsIdentity(sender.view.transform)) {
        tombo.transform = CGAffineTransformMakeScale(3.0, 3.0);
    } else {
        tombo.transform = CGAffineTransformIdentity;
    }
}

@end
