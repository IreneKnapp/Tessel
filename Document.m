//
//  Document.m
//  Tessel
//
//  Created by Dan Knapp on 1/2/11.
//  Copyright 2011 Dan Knapp. All rights reserved.
//

#import "Document.h"

@implementation Document

- (id)init {
    self = [super init];
    if (self) {
    }
    return self;
}


- (NSString *) windowNibName {
    return @"Document";
}


- (void) windowControllerDidLoadNib: (NSWindowController *) controller {
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

@end
