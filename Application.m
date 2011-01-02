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
}

@end
