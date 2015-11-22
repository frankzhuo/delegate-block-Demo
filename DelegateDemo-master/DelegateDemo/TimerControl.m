//
//  TimerControl.m
//  DelegateDemo
//
//  Created by pony ma on 5/12/14.
//  Copyright (c) 2014 pony ma. All rights reserved.
//

#import "TimerControl.h"

@implementation TimerControl


- (void) startTheTimer
{

    [NSTimer scheduledTimerWithTimeInterval:5.0f target:self selector:@selector(timerProc) userInfo:nil repeats:NO];
}

- (void) timerProc
{
    //[self.delegate updateAlert];//委托更新UI
    if ([self.delegate respondsToSelector:@selector(updateAlert)]) {
        [self.delegate updateAlert];
    }
    
    //block代替委托
//    if (self.updateAlertBlock)
//    {
//        self.updateAlertBlock();
//    }
}

@end
