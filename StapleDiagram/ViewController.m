//
//  ViewController.m
//  StapleDiagram
//
//  Created by Eric Groseclos on 2018-02-05.
//  Copyright © 2018 Eric Groseclos. All rights reserved.
//

#import "ViewController.h"
#import "StapleDrawer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    StapleDrawer *sD = [[StapleDrawer alloc] initDiagram];
    [self.view addSubview:sD];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
