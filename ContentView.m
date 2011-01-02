//
//  ContentView.m
//  Tessel
//
//  Created by Dan Knapp on 1/2/11.
//  Copyright 2011 Dan Knapp. All rights reserved.
//

#import "ContentView.h"


@implementation ContentView

- (id) initWithFrame: (NSRect) frame {
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}


- (void) drawRect: (NSRect) dirtyRect {
    NSRect bounds = [self bounds];

    [[NSColor redColor] set];
    [NSBezierPath fillRect: bounds];
}

@end
