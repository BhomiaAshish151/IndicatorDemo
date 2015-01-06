//
//  IndicatorViewController.m
//  Indicator
//
//  Created by NOTOITSOLUTIONS on 05/01/15.
//  Copyright (c) 2015 NOTO SOLUTIONS. All rights reserved.
//

#import "IndicatorViewController.h"
#import "simpleIndicatorViewController.h"
#import "gifViewController.h"
#import "AnimatedViewController.h"
@interface IndicatorViewController ()

@end

@implementation IndicatorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(IBAction)SimpleIndicator:(id)sender
{
    simpleIndicatorViewController *NewClass=[[simpleIndicatorViewController alloc]initWithNibName:@"simpleIndicatorViewController" bundle:nil];
    [self.navigationController pushViewController:NewClass animated:YES];
}
-(IBAction)gifIndicator:(id)sender
{
    gifViewController *NewClass=[[gifViewController alloc]initWithNibName:@"gifViewController" bundle:nil];
    [self.navigationController pushViewController:NewClass animated:YES];
}
-(IBAction)AnimatedIndicator:(id)sender
{
    AnimatedViewController *NewClass=[[AnimatedViewController alloc]initWithNibName:@"AnimatedViewController" bundle:nil];
    [self.navigationController pushViewController:NewClass animated:YES];
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
