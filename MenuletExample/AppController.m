//
//  AppController.m
//  MenuletExample
//
//  Created by Endoze on 7/23/12.
//  Copyright (c) 2012 EndozeMedia, LLC. All rights reserved.
//

#import "AppController.h"

@implementation AppController

@synthesize statusItem = _statusItem;
@synthesize menu = _menu;

- (void)awakeFromNib
{
    self.statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [self.statusItem setHighlightMode:YES];
    [self.statusItem setTitle: @"⬇"];
    [self.statusItem setEnabled:YES];
    [self.statusItem setToolTip:@"IPMenulet"];
    [self.statusItem setMenu:self.menu];
    
}

-(IBAction)terminate:(id)sender
{
    exit(EXIT_SUCCESS);
}

@end
