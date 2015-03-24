//
//  XCSaveSelectionAction.h
//  XCActionBar
//
//  Created by Pedro Gomes on 23/03/2015.
//  Copyright (c) 2015 Pedro Gomes. All rights reserved.
//

#import "XCCustomAction.h"

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
@protocol XCTextSelectionStorage;
@interface XCTextSelectionAction : XCCustomAction

- (instancetype)initWithTextSelectionStorage:(id<XCTextSelectionStorage>)textSelectionStorage;

@end

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
@interface XCSaveSelectionAction : XCTextSelectionAction
@end

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
@interface XCLoadSelectionAction : XCTextSelectionAction
@end

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
@interface XCClearSelectionAction : XCTextSelectionAction
@end

