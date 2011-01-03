//
//  Document.m
//  Tessel
//
//  Created by Dan Knapp on 1/2/11.
//  Copyright 2011 Dan Knapp. All rights reserved.
//

#import "Document.h"
#import <SQLite-Objc/SQLDatabase.h>

@implementation Document

- (id) init {
    self = [super init];
    if (self) {
	database = [SQLDatabase databaseInMemory];
    }
    return self;
}


- (void) close {
    [database close];
}


- (NSString *) windowNibName {
    return @"Document";
}


- (void) windowControllerDidLoadNib: (NSWindowController *) controller {
    NSScreen *screen = [[NSScreen screens] objectAtIndex: 0];
    NSRect screenFrame = [screen visibleFrame];
    NSPoint topLeftPoint
	= NSMakePoint(48.0 + screenFrame.origin.x,
		      screenFrame.origin.y + screenFrame.size.height);
    [[controller window] setFrameTopLeftPoint: topLeftPoint];
    
    [super windowControllerDidLoadNib: controller];
}


- (NSData *) dataOfType: (NSString *) typeName error: (NSError **) outError {
    if (outError != NULL) {
	*outError = [NSError errorWithDomain: NSOSStatusErrorDomain
			     code: unimpErr
			     userInfo: NULL];
    }
    return nil;
}


- (BOOL) readFromData: (NSData *) data
	       ofType: (NSString *) typeName
		error: (NSError **) outError
{
    if (outError != NULL) {
	*outError = [NSError errorWithDomain: NSOSStatusErrorDomain
			     code: unimpErr
			     userInfo: NULL];
    }
    return YES;
}


- (IBAction) insertLayer: (id) sender {
    NSLog(@"Inserting layer...");
}

@end
