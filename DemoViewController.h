//
//  DemoViewController.h
//  Indicator
//
//  Created by NOTOITSOLUTIONS on 05/01/15.
//  Copyright (c) 2015 NOTO SOLUTIONS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DemoViewController : UIViewController
@property (nonatomic, strong) IBOutlet UITextField *textField;
@property (nonatomic, strong) IBOutlet UIButton *showAgainButton;

@property (nonatomic) BOOL useBezelStyle;
@property (nonatomic) BOOL useKeyboardStyle;
@property (nonatomic) BOOL showKeyboard;
@property (nonatomic) BOOL coverNavBar;
@property (nonatomic) BOOL useNetworkActivity;
@property (nonatomic, strong) NSString *labelText1;
@property (nonatomic, strong) NSString *labelText2;
@property (nonatomic) NSUInteger labelWidth;

- (IBAction)displayActivityView;
- (void)changeActivityView;
- (void)removeActivityView;
@end
