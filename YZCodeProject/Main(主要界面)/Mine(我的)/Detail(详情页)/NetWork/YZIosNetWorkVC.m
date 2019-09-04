//
//  YZIosNetWorkVC.m
//  YZCodeProject
//
//  Created by jonzhang on 2019/9/4.
//  Copyright © 2019 xinmei. All rights reserved.
//

#import "YZIosNetWorkVC.h"

@interface YZIosNetWorkVC ()

@end

@implementation YZIosNetWorkVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self iosNetWork];
    
    
}
- (void)iosNetWork {
    
    NSString * str = @"https://static001.geekbang.org/univer/classes/ios_dev/lession/45/toutiao.json";
    //OS中对请求的地址的封装,把传入的url字符串分解成各个子字符串，形成一个规范化的对象。
    //网络资源的路径,urlwithstring
    
    //本地文件的路径,fileulrwithpath

    NSURL * url = [NSURL URLWithString:str];
    
    //NSURLRequest 对象就代表一个请求
    //包含 NSURL 对象、请求方法、请求头、请求体等
    
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    
    //负责接收、发送和处理理请求,⼀个 Session 可以创建多个请求
    NSURLSession * session = [NSURLSession sharedSession];
    
    //创建好的 SessionTask 是 suspend状态， 调⽤用 resume 开始执⾏
    NSURLSessionTask * sessionTask =  [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
    }];
    
    // 执行请求
    [sessionTask resume];
//    sessionTask 有四种状态,NSURLSessionTaskState枚举反应task的状态
    
    
}


@end
