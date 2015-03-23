//
//  ViewController.m
//  IntergalacticTravel
//
//  Created by Mert Akanay on 10.03.2015.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "RootViewController.h"
#import "VisitViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender
{
    VisitViewController *viewController = segue.destinationViewController;
    viewController.title=sender.currentTitle;
    if([segue.identifier isEqualToString:@"blueStar"])
    {
        viewController.isBlueStar = YES;
    }else if ([segue.identifier isEqualToString:@"redDwarf"])
    {
        viewController.isBlueStar = NO;
    }
}

-(IBAction)unwindToRoot:(UIStoryboardSegue *)sender
{
    VisitViewController *viewController = sender.sourceViewController;
    NSLog(@"came from %@", viewController.title);
}


@end
