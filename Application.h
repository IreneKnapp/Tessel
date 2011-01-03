//  -*- mode: objc -*-
//  Application.h
//  Tessel
//
//  Created by Dan Knapp on 1/2/11.
//  Copyright 2011 Dan Knapp. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Application : NSApplication <NSWindowDelegate> {
    IBOutlet NSPanel *toolPanel;
}

- (void) finishLaunching;
- (void) mainWindowChangedNotification: (NSNotification *) notification;
- (BOOL) documentMenuEnabled;
- (IBAction) documentInsertLayer: (id) sender;
- (void) sendEvent: (NSEvent *) event;
@end
