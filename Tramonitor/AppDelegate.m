//
//  AppDelegate.m
//  Tramonitor
//
//  Created by Bernd Artmueller on 14.12.14.
//  Copyright (c) 2014 Bernd Artmüller. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void) awakeFromNib {
    statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    
    [statusItem setMenu:menu];
    [statusItem setTitle:@"02:12"];
    [statusItem setHighlightMode:YES];
    
    CLLocationManager *locationManager;
    locationManager.delegate = self;
    [locationManager startUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
    // Ignore updates where nothing we care about changed
    if (newLocation.coordinate.longitude == oldLocation.coordinate.longitude &&
        newLocation.coordinate.latitude == oldLocation.coordinate.latitude &&
        newLocation.horizontalAccuracy == oldLocation.horizontalAccuracy)
    {
        NSLog(@"asdf");
        return;
    }
    
    NSLog(@"Value: %f", newLocation.coordinate.latitude);
}


- (IBAction)quit:(id)sender {
    [statusItem setTitle:@"02:15"];
}

@end
