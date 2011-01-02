//
//  Application.m
//  Tessel
//
//  Created by Dan Knapp on 1/2/11.
//  Copyright 2011 Dan Knapp. All rights reserved.
//

#import "Application.h"


@implementation Application

- (void) finishLaunching {
    [super finishLaunching];
    
    [toolPanel setFloatingPanel: YES];
    [toolPanel setBecomesKeyOnlyIfNeeded: YES];
    [toolPanel setStyleMask: [toolPanel styleMask] & ~NSTitledWindowMask];
    
    NSScreen *screen = [[NSScreen screens] objectAtIndex: 0];
    NSRect screenFrame = [screen visibleFrame];
    NSPoint topLeftPoint
	= NSMakePoint(screenFrame.origin.x,
		      screenFrame.origin.y + screenFrame.size.height);
    [toolPanel setFrameTopLeftPoint: topLeftPoint];
    [toolPanel orderFront: self];

    NSNotificationCenter *notificationCenter
	= [NSNotificationCenter defaultCenter];
    [notificationCenter addObserver: self
			selector: @selector(mainWindowChangedNotification:)
			name: NSWindowDidBecomeMainNotification
			object: nil];
    [notificationCenter addObserver: self
			selector: @selector(mainWindowChangedNotification:)
			name: NSWindowDidResignMainNotification
			object: nil];
}


- (void) mainWindowChangedNotification: (NSNotification *) notification {
    NSLog(@"Updating document-menu-enabled.");
    [self willChangeValueForKey: @"documentMenuEnabled"];
    [self didChangeValueForKey: @"documentMenuEnabled"];
}


- (BOOL) documentMenuEnabled {
    NSWindow *mainWindow = [self mainWindow];
    if(!mainWindow)
	return NO;
    
    NSDocumentController *documentController
	= [NSDocumentController sharedDocumentController];
    if([documentController currentDocument])
	return YES;
    else
	return NO;
}


- (IBAction) documentInsertLayer: (id) sender {
    NSLog(@"TODO.");
}

@end
