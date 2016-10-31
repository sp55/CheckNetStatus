//
//  SPCheckNetStatus.h
//  CheckNetStatus
//
//  Created by admin on 2016/10/31.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSInteger,NetworkStates) {
    NetworkStatesUnknown,//未知
    NetworkStates2G,//2G
    NetworkStates3G,//3G
    NetworkStates4G,//4G
    NetworkStatesWifi,//Wifi
};


@interface SPCheckNetStatus : NSObject
///判断当前网络状态
- (NetworkStates)currentNetworkStates;

@end
