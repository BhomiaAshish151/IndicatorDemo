//
//  DemoViewController.m
//  Indicator
//
//  Created by NOTOITSOLUTIONS on 05/01/15.
//  Copyright (c) 2015 NOTO SOLUTIONS. All rights reserved.
//

#import "DemoViewController.h"
#import "ActivityView.h"
@interface DemoViewController ()

@end

@implementation DemoViewController
@synthesize textField, showAgainButton;
@synthesize useBezelStyle, useKeyboardStyle, showKeyboard, coverNavBar, useNetworkActivity, labelText1, labelText2, labelWidth;
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
     [self performSelector:@selector(displayActivityView) withObject:nil afterDelay:0.8];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)displayActivityView;
{
    UIView *viewToUse = self.view;
    
    // Perhaps not the best way to find a suitable view to cover the navigation bar as well as the content?
    if (self.coverNavBar)
        viewToUse = self.navigationController.navigationBar.superview;
    
    if (self.useKeyboardStyle)
        self.showAgainButton.enabled = NO;
    else if (!self.useBezelStyle)
        self.showAgainButton.hidden = YES;
    
    if (self.labelText1)
    {
        // Display the appropriate activity style, with custom label text.  The width can be omitted or zero to use the text's width:
        if (self.useKeyboardStyle)
            [DejalKeyboardActivityView activityViewWithLabel:self.labelText1];
        else if (self.useBezelStyle)
            [DejalBezelActivityView activityViewForView:viewToUse withLabel:self.labelText1 width:self.labelWidth];
        else
            [ActivityView activityViewForView:viewToUse withLabel:self.labelText1 width:self.labelWidth];
    }
    else
    {
        // Display the appropriate activity style, with the default "Loading..." text:
        if (self.useKeyboardStyle)
            [DejalKeyboardActivityView activityView];
        else if (self.useBezelStyle)
            [DejalBezelActivityView activityViewForView:viewToUse];
        else
            [ActivityView activityViewForView:viewToUse];
    }
    
    // If this is YES, the network activity indicator in the status bar is shown, and automatically hidden when the activity view is removed.  This property can be toggled on and off as needed:
    if (self.useNetworkActivity)
        [ActivityView currentActivityView].showNetworkActivityIndicator = YES;
    
    if (self.labelText2)
        [self performSelector:@selector(changeActivityView) withObject:nil afterDelay:3.0];
    else
        [self performSelector:@selector(removeActivityView) withObject:nil afterDelay:5.0];
}

- (void)removeActivityView;
{
    // Remove the activity view, with animation for the two styles that support it:
   
    
    [[self class] cancelPreviousPerformRequestsWithTarget:self];
}

- (void)viewDidDisappear:(BOOL)animated;
{
	[super viewDidDisappear:animated];
    
    [self removeActivityView];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
