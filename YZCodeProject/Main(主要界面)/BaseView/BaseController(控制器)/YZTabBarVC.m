//
//  YZTabBarVC.m
//  YZCodeProject
//
//  Created by jonzhang on 2019/8/16.
//  Copyright © 2019 xinmei. All rights reserved.
//

#import "YZTabBarVC.h"
#import "HomeVC.h"
#import "MineVC.h"
@interface YZTabBarVC ()

@end

@implementation YZTabBarVC
- (instancetype)init {
    self = [super init];
    if (self) {
        HomeVC * homeVC = [[HomeVC alloc] init];
        
        MineVC *mineVC = [[MineVC alloc] init];
        
        self.viewControllers = @[homeVC,mineVC];

    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
