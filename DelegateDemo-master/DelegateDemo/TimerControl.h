//
//  TimerControl.h
//  DelegateDemo
//
//  Created by pony ma on 5/12/14.
//  Copyright (c) 2014 pony ma. All rights reserved.
//

#import <Foundation/Foundation.h>


//委托的协议定义
@protocol UpdateAlertDelegate <NSObject>

@required
- (void)updateAlert;
@end



@interface TimerControl : NSObject
//委托变量定义
@property (nonatomic, strong) id<UpdateAlertDelegate> delegate;


//block
typedef void (^UpdateAlertBlock)();
@property (nonatomic, copy) UpdateAlertBlock updateAlertBlock;

- (void) startTheTimer;
   
@end
