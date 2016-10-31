
//
//  SPCheckNetStatus.m
//  CheckNetStatus
//
//  Created by admin on 2016/10/31.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "SPCheckNetStatus.h"
#import "AppDelegate.h"



@implementation SPCheckNetStatus


///判断当前网络状态
- (NetworkStates)currentNetworkStates {
    //拿到状态栏的子视图
    NSArray *subViews = [[[[UIApplication sharedApplication] valueForKeyPath:@"statusBar"] valueForKeyPath:@"foregroundView"] subviews];
    //保存网络状态码
    NetworkStates state = NetworkStatesUnknown;
    for (id child in subViews) {
        if ([child isKindOfClass:NSClassFromString(@"UIStatusBarDataNetworkItemView")]) {
            NSLog(@"childNetwork:%@",child);
            //获取到状态栏码
            NSInteger currentNetworkCode = [[child valueForKeyPath:@"dataNetworkType"] intValue];
            switch (currentNetworkCode) {
                case 0:
                    state = NetworkStatesUnknown;
                    break;
                case 1:
                    state = NetworkStates2G;
                    break;
                case 2:
                    state = NetworkStates3G;
                    break;
                case 3:
                    state = NetworkStates4G;
                    break;
                case 4 | 5://可以打印当前状态码来确定状态码的准确性
                    state = NetworkStatesWifi;
                    break;
                default:
                    break;
            }
        }
    }
    
    return state;
    
}



@end
