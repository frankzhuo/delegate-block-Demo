//
//  DelegateDemoViewController.m
//  DelegateDemo
//
//  Created by pony ma on 5/12/14.
//  Copyright (c) 2014 pony ma. All rights reserved.
//

#import "DelegateDemoViewController.h"


@interface DelegateDemoViewController () <UpdateAlertDelegate>

@end

@implementation DelegateDemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    TimerControl *timer = [[TimerControl alloc] init];
    timer.delegate = self; //设置委托实例
    
    //实现block
//    timer.updateAlertBlock = ^()
//    {
//        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"提示" message:@"时间到" delegate:self cancelButtonTitle:nil otherButtonTitles:@"确定",nil];
//        
//        alert.alertViewStyle=UIAlertViewStyleDefault;
//        [alert show];
//    };
    
    
    
    [timer startTheTimer];//启动定时器，定时5触发
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//"被委托对象"实现协议声明的方法,由"委托对象"调用
- (void)updateAlert
{
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"提示" message:@"时间到" delegate:self cancelButtonTitle:nil otherButtonTitles:@"确定",nil];
    
    alert.alertViewStyle=UIAlertViewStyleDefault;
    [alert show];
}


@end
