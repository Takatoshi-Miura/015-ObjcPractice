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
- (IBAction)tapTombo:(UITapGestureRecognizer *)sender;

@end



@implementation TomboViewController

// トンボをタップした時の処理
- (IBAction)tapTombo:(UITapGestureRecognizer *)sender {
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

@end
