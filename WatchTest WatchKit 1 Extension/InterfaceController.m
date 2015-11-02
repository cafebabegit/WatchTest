//
//  InterfaceController.m
//  WatchTest WatchKit 1 Extension
//
//  Created by  on 15/11/2.
//
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (IBAction)buttonTapped:(id)sender {
    NSLog(@"buttonTapped...");
    NSInteger count=10;
    NSMutableArray *controllers=[NSMutableArray array];
    NSMutableArray *contexts=[NSMutableArray array];
    for(int i=0;i<count;i++) {
        [controllers addObject:@"PageInterfaceController"];
        [contexts addObject:[NSNumber numberWithInteger:i]];
    }
    
    [self presentControllerWithNames:controllers contexts:contexts];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



