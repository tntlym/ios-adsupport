//
//  ViewController.m
//  TestAdID
//
//  Created by bluemol on 3/26/13.
//  Copyright (c) 2013 doradori. All rights reserved.
//

#import "ViewController.h"
#import <AdSupport/AdSupport.h>

@interface ViewController ()

@end

@implementation ViewController

@synthesize uuidLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    ASIdentifierManager *adManager = [ASIdentifierManager sharedManager];
    NSUUID *adId = adManager.advertisingIdentifier;
    
    [uuidLabel setText:adId.UUIDString];
        
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
