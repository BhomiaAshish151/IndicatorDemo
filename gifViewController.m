//
//  gifViewController.m
//  Indicator
//
//  Created by NOTOITSOLUTIONS on 06/01/15.
//  Copyright (c) 2015 NOTO SOLUTIONS. All rights reserved.
//

#import "gifViewController.h"

@interface gifViewController ()

@end

@implementation gifViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)showAlertforwait
{
    alertView = [[CustomIOS7AlertView alloc] init];
    alertView.tintColor=[UIColor blackColor];
    // Add some custom content to the alert view
    [alertView setContainerView:[self createDemoView]];
    
    // Modify the parameters
    [alertView setButtonTitles:[NSMutableArray arrayWithObjects:nil, nil]];
    [alertView setDelegate:self];
    
    // You may use a Block, rather than a delegate.
    [alertView setUseMotionEffects:true];
    // And launch the dialog
    [alertView show];
}

- (UIView *)createDemoView
{
    UIView *demoView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 90, 90)];
    [demoView setBackgroundColor:[UIColor clearColor]];
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"loading" withExtension:@"gif"];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 70, 70)];
    imageView.backgroundColor=[UIColor clearColor];
    [imageView setImage:[UIImage animatedImageWithAnimatedGIFData:[NSData dataWithContentsOfURL:url]]];
    
    [demoView addSubview:imageView];
    
    return demoView;
}

- (void)viewDidLoad
{
    [self showAlertforwait];
    [super viewDidLoad];
   NSTimer* timer = [NSTimer scheduledTimerWithTimeInterval: 0.9
                                             target: self
                                           selector:@selector(onTick)
                                           userInfo: nil repeats:NO];
    // Do any additional setup after loading the view from its nib.
}
-(void)onTick
{
  [alertView close];
}
- (void)didReceiveMemoryWarning
{
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
