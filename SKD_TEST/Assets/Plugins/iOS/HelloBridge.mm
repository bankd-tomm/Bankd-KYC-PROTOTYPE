#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface HelloSwift : NSObject
+ (void)showHello;
@end

extern "C" {
void ShowHelloSwift(){
    [HelloSwift showHello];
}
}
