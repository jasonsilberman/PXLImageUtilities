//
//  PXLDemoViewController.m
//  PXLImageUtilitiesDemo
//
//  Created by Jason Silberman on 3/8/14.
//  Copyright (c) 2014 Jason Silberman. All rights reserved.
//

#import "PXLDemoViewController.h"
#import "UIImage+PXLUtilities.h"

@interface PXLDemoViewController ()

@end

@implementation PXLDemoViewController

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
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    UIView *rect1 = [[UIView alloc] initWithFrame:CGRectMake(0, 80, 50, 50)];
    rect1.backgroundColor = [UIColor redColor];
    [self.view addSubview:rect1];
    
    UIImage *screenshot = [UIImage imageFromScreenshotOfView:rect1];
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(60, 80, 50, 50)];
    imgView.image = [screenshot fillWithColor:[UIColor blueColor]];
    [self.view addSubview:imgView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
