//
//  simpleIndicatorViewController.m
//  Indicator
//
//  Created by NOTOITSOLUTIONS on 05/01/15.
//  Copyright (c) 2015 NOTO SOLUTIONS. All rights reserved.
//

#import "simpleIndicatorViewController.h"
#import "DemoViewController.h"

@interface simpleIndicatorViewController ()

@end

@implementation simpleIndicatorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(IBAction)SimpleIndicator:(id)sender{
    DemoViewController *demoClass=[[DemoViewController alloc]initWithNibName:@"DemoViewController" bundle:nil];
    //demoClass.useBezelStyle = YES;
    [self.navigationController pushViewController:demoClass animated:YES];
    
}
-(IBAction)SimpleIndicatorPlustext:(id)sender{
    DemoViewController *demoClass=[[DemoViewController alloc]initWithNibName:@"DemoViewController" bundle:nil];
//    demoClass.useBezelStyle = YES;
    demoClass.labelText1 = @"Preparing...";
    [self.navigationController pushViewController:demoClass animated:YES];
}
-(IBAction)SimpleIndicatorPluslongtext:(id)sender{
    DemoViewController *demoClass=[[DemoViewController alloc]initWithNibName:@"DemoViewController" bundle:nil];
//    demoClass.useBezelStyle = YES;
    demoClass.labelText1 = @"Massaging Pixels...";
    demoClass.labelText2 = @"Reticulating Splines...";
    demoClass.labelWidth = 155;
    [self.navigationController pushViewController:demoClass animated:YES];
}
-(IBAction)SimpleIndicatorPlusstatus:(id)sender{
    DemoViewController *demoClass=[[DemoViewController alloc]initWithNibName:@"DemoViewController" bundle:nil];
    demoClass.labelText1 = @"Look in status bar...";
    demoClass.labelText2 = @"Now it's gone...";
    demoClass.labelWidth = 130;
    demoClass.useNetworkActivity = YES;
    [self.navigationController pushViewController:demoClass animated:YES];
}
-(IBAction)SimpleIndicatorPlusAlert:(id)sender{
    DemoViewController *demoClass=[[DemoViewController alloc]initWithNibName:@"DemoViewController" bundle:nil];
    demoClass.useBezelStyle = YES;
    demoClass.labelText1 = @"Preparing...";
    [self.navigationController pushViewController:demoClass animated:YES];
}
-(IBAction)SimpleIndicatorPlusAlertplustext:(id)sender{
    DemoViewController *demoClass=[[DemoViewController alloc]initWithNibName:@"DemoViewController" bundle:nil];
    demoClass.useBezelStyle = YES;
    //demoViewController.useBezelStyle = YES;
    demoClass.labelText1 = @"Split over\nMultiple lines...";
    [self.navigationController pushViewController:demoClass animated:YES];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
