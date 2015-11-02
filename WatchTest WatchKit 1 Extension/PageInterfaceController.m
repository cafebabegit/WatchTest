//
//  PageInterfaceController.m
//  WatchTest
//
//  Created by  on 15/11/2.
//
//

#import "PageInterfaceController.h"

@interface PageInterfaceController () {
    id _context;
}

@end

@implementation PageInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    NSLog(@"awakeWithContext: %@", context);
    _context=context;
    [_label setText:[NSString stringWithFormat:@"%@", _context]];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    NSLog(@"willActivate: %@", _context);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



