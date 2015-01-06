//
//  AppDelegate.h
//  Indicator
//
//  Created by NOTOITSOLUTIONS on 05/01/15.
//  Copyright (c) 2015 NOTO SOLUTIONS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IndicatorViewController.h"
@class IndicatorViewController;
@interface AppDelegate : UIResponder <UIApplicationDelegate,UINavigationControllerDelegate>
{
    IndicatorViewController *indicatorClass;
    UINavigationController *nav;
}

@property (strong, nonatomic) UIWindow *window;
@property(nonatomic,retain)IndicatorViewController *indicatorClass;
@property(nonatomic,retain)UINavigationController *nav;
@end
