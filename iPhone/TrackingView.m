//
//  TrackingView.m
//  MVPEvents
//
//  Created by Albert Pascual on 1/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TrackingView.h"

@implementation TrackingView

@synthesize trackingManager = _trackingManager;
@synthesize mySwitch = _mySwitch;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSUserDefaults *userDefaults = [[[NSUserDefaults alloc] init] autorelease];
    if ( [userDefaults objectForKey:@"gps"] != nil) {
        if ( [[userDefaults objectForKey:@"gps"] isEqualToString:@"1"]) {
            [self.mySwitch setOn:YES];
        }
        else
        {
            [self.mySwitch setOn:NO];
        }
    }
    
    if ( self.trackingManager == nil ) {
        self.trackingManager = [[TrackingManager alloc] init];
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)gpsChanged:(id)sender {
    UISwitch *gpsSwitch = sender;
    
    NSUserDefaults *userDefaults = [[[NSUserDefaults alloc] init] autorelease];
    
    if ( gpsSwitch.isOn ) {
        [userDefaults setObject:@"1" forKey:@"gps"];
        
        [self.trackingManager startUpTracking];
    }
    else
    {
        [userDefaults setObject:@"0" forKey:@"gps"];
        
        [self.trackingManager stopUpTracking];
    }
    
    [userDefaults synchronize];
        
}

- (IBAction)downloadPress:(id)sender {
    
    NSURL *url = [[NSURL alloc] initWithString:@"http://itunes.apple.com/us/app/twitter-tracker/id497281979?mt=8&ls=1"];
    [[UIApplication sharedApplication] openURL:url];
}

@end
