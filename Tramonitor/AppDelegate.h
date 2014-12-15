//
//  AppDelegate.h
//  Tramonitor
//
//  Created by Bernd Artmueller on 14.12.14.
//  Copyright (c) 2014 Bernd Artmüller. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <CoreLocation/CoreLocation.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    NSStatusItem *statusItem;
    IBOutlet NSMenu *menu;
}

@property (assign) IBOutlet NSWindow *window;

@end

