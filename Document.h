//  -*- mode: objc -*-
//  Document.h
//  Tessel
//
//  Created by Dan Knapp on 1/2/11.
//  Copyright 2011 Dan Knapp. All rights reserved.
//


#import <Cocoa/Cocoa.h>

@interface Document : NSDocument
{
}

- (id) init;
- (NSString *) windowNibName;
- (void) windowControllerDidLoadNib: (NSWindowController *) controller;
- (NSData *) dataOfType: (NSString *) typeName error: (NSError **) outError;
- (BOOL) readFromData: (NSData *) data
	       ofType: (NSString *) typeName
		error: (NSError **) outError;
- (IBAction) insertLayer: (id) sender;
@end
