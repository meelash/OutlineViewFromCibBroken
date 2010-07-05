/*
 * AppController.j
 * TableFromCibBroken
 *
 * Created by You on July 5, 2010.
 * Copyright 2010, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>


@implementation AppController : CPObject
{
    @outlet CPWindow    theWindow; //this "outlet" is connected automatically by the Cib

    @outlet CPOutlineView   testTable;
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    // This is called when the application is done loading.
}

- (void)awakeFromCib
{debugger;
    var argumentColumn = [[CPTableColumn alloc] initWithIdentifier:"argumentColumn"];
    [argumentColumn setWidth:CGRectGetWidth([testTable frame])];
    [testTable setRowHeight:24.0];
    [testTable setHeaderView:nil];
    [testTable setCornerView:nil];
    [testTable addTableColumn:argumentColumn];
    // This is called when the cib is done loading.
    // You can implement this method on any object instantiated from a Cib.
    // It's a useful hook for setting up current UI values, and other things. 
}

@end
