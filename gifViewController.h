//
//  gifViewController.h
//  Indicator
//
//  Created by NOTOITSOLUTIONS on 06/01/15.
//  Copyright (c) 2015 NOTO SOLUTIONS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomIOS7AlertView.h"
#import "UIImage+animatedGIF.h"
@interface gifViewController : UIViewController<CustomIOS7AlertViewDelegate>
{
    UIActivityIndicatorView * progress;
    CustomIOS7AlertView *alertView;
}

@end
