//
//  ViewController.m
//  CheckNetStatus
//
//  Created by admin on 2016/10/31.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "ViewController.h"
#import "SPCheckNetStatus.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    SPCheckNetStatus *status = [[SPCheckNetStatus alloc] init];
    
    
    NSLog(@"current--->%ld",status.currentNetworkStates);

}



@end
