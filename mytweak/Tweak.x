#import <UIKit/UIKit.h>
#import "SpringBoard.h"
@interface  ViewController:UIViewController //為了使用self,否則編譯不過
@end

%hook SBHomeScreenViewController

-(void) viewWillLayoutSubviews{

	%orig;
  %orig;
UIAlertController *alert =   [UIAlertController
            alertControllerWithTitle:@"這是我人生第一個Tweak"
            message:@"2023/04/13，655公司誕生了一位Junior iOS Tweak Developer\n Aar0n Lin"
            preferredStyle:UIAlertControllerStyleAlert];


UIAlertAction *okAction = [UIAlertAction
            actionWithTitle:@"好的"
            style:UIAlertActionStyleCancel
            handler:^(UIAlertAction *action) {
//Do stuff here
            }];

[alert addAction:okAction];
[self presentViewController:alert animated:YES completion:nil];


}

%end
