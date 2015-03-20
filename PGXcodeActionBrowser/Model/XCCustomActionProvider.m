//
//  XCCustomActionProvider.m
//  XCXcodeActionBrowser
//
//  Created by Pedro Gomes on 16/03/2015.
//  Copyright (c) 2015 Pedro Gomes. All rights reserved.
//

#import "XCCustomActionProvider.h"
#import "XCIDEContext.h"

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
@interface XCCustomActionProvider ()

@property (nonatomic, copy) NSString *categoryName;
@property (nonatomic, copy) NSString *groupName;

@property (nonatomic) XCIDEContext *context;
@property (nonatomic) NSArray      *actions;

@end

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
@implementation XCCustomActionProvider

@synthesize delegate;

#pragma mark - Dealloc and Initialization

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
- (instancetype)initWithCategory:(NSString *)category group:(NSString *)group actions:(NSArray *)actions context:(id<XCIDEContext>)context
{
    if((self = [super init])) {
        self.categoryName = category;
        self.groupName    = group;
        
        self.actions  = actions;
        self.context  = context;
    }
    return self;
}

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
- (void)prepareActionsOnQueue:(dispatch_queue_t)indexerQueue
            completionHandler:(PGGeneralCompletionHandler)completionHandler
{
    dispatch_async(indexerQueue, completionHandler);
}

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
- (void)prepareActionsWithCompletionHandler:(PGGeneralCompletionHandler)completionHandler
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0),
                   completionHandler);
}

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
- (NSString *)actionCategory
{
    return self.categoryName;
}

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
- (NSString *)actionGroupName
{
    return self.groupName;
}

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
- (NSArray *)findAllActions
{
    return self.actions;
}

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
- (NSArray *)findActionsMatchingExpression:(NSString *)expression
{
    return @[];
}

#pragma mark - NSUserInterfaceValidations

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
- (BOOL)validateUserInterfaceItem:(id<NSValidatedUserInterfaceItem>)anItem
{
    return NO;
}

@end
