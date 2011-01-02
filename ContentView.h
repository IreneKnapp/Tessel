//  -*- mode: objc -*-
//  ContentView.h
//  Tessel
//
//  Created by Dan Knapp on 1/2/11.
//  Copyright 2011 Dan Knapp. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface ContentView : NSView {

}

- (id) initWithFrame: (NSRect) frame;
- (void) drawRect: (NSRect) dirtyRect;
@end
