//
//  ViewController.h
//  015-ObjcPractice
//
//  Created by Takatoshi Miura on 2020/10/14.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// プロパティの宣言
@property (assign) NSInteger counter;

// メソッドの宣言(疑問：メソッドのプロパティだけ宣言して、処理は実装ファイルで宣言するのが普通なのか？)
- (NSString *)fullName:(NSString *)sei lastName:(NSString *)mei;
- (void)countUp;

@end

