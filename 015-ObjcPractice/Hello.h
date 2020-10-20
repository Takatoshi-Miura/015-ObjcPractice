//
//  Hello.h
//  015-ObjcPractice
//
//  Created by Takatoshi Miura on 2020/10/21.
//

#ifndef Hello_h
#define Hello_h

@interface Hello : NSObject

// プロパティの宣言
@property NSString *where;

// メソッドの宣言
- (NSString *)hello:(NSString *)who;

@end

#endif /* Hello_h */
