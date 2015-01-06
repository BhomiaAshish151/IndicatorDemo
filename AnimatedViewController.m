//
//  AnimatedViewController.m
//  Indicator
//
//  Created by NOTOITSOLUTIONS on 06/01/15.
//  Copyright (c) 2015 NOTO SOLUTIONS. All rights reserved.
//

#import "AnimatedViewController.h"
#import "TSActivityIndicatorView.h"
@interface AnimatedViewController ()

@end

@implementation AnimatedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    _indicator.hidesWhenStopped = YES;
    TSActivityIndicatorView *customIndicator =
    [[TSActivityIndicatorView alloc]
     initWithFrame:CGRectMake(160-17, 100, 75, 75)];
    
    /// Add frames as strings
    customIndicator.frames = @[@"activity-indicator-1",@"activity-indicator-2",@"activity-indicator-3",@"activity-indicator-4",@"activity-indicator-5",@"activity-indicator-6",@"activity-indicator-7",@"activity-indicator-8",@"activity-indicator-9",                               @"activity-indicator-10",@"activity-indicator-11",@"activity-indicator-12"];
    
    /// Add to subview
    //[self.view insertSubview:_indicator aboveSubview:newsFeedTable];
    
    /// And start animate
    customIndicator.duration = 0.5f;
    //    [customIndicator startAnimating];
    
    
    /// simple after delay block
    double delayInSeconds = 3;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        
        /// hidesWhenStopped is default set to YES. We don't want to hide indicator after stop.
        customIndicator.hidesWhenStopped = NO;
        
        /// And stop.
        [customIndicator stopAnimating];
        /// Is still on screen.
    });
    
[_indicator startAnimating];
    NSTimer* timer = [NSTimer scheduledTimerWithTimeInterval: 15
                                                      target: self
                                                    selector:@selector(onTick)
                                                    userInfo: nil repeats:NO];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
-(void)onTick
{
    [_indicator stopAnimating];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
