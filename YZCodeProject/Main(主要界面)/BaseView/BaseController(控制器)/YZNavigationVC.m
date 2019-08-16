//
//  YZNavigationVC.m
//  YZCodeProject
//
//  Created by jonzhang on 2019/8/16.
//  Copyright © 2019 xinmei. All rights reserved.
//

#import "YZNavigationVC.h"
#import "YZTabBarVC.h"
@interface YZNavigationVC ()

@end

@implementation YZNavigationVC
- (instancetype)init {
    YZTabBarVC *tabBarVC = [[YZTabBarVC alloc] init];
    self = [super initWithRootViewController:tabBarVC];

    if (self) {
        
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
