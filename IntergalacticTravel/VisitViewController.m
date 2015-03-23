//
//  VisitViewController.m
//  IntergalacticTravel
//
//  Created by Mert Akanay on 10.03.2015.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "VisitViewController.h"

@interface VisitViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end

@implementation VisitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.isBlueStar == YES)
    {
        self.view.backgroundColor = [UIColor blueColor];
        self.image.image = [UIImage imageNamed:@"blue star"];
    }else{
        self.view.backgroundColor = [UIColor redColor];
        self.image.image = [UIImage imageNamed:@"red dwarf"];
    }
}


@end
