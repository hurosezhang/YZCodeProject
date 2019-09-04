//
//  YZLearnKVOVC.m
//  YZCodeProject
//
//  Created by jonzhang on 2019/8/19.
//  Copyright © 2019 xinmei. All rights reserved.
//

#import "YZLearnKVOVC.h"
#import "YZFizz.h"

@interface YZLearnKVOVC ()
@property (nonatomic, strong) YZFizz *fizz;
@end

@implementation YZLearnKVOVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    YZFizz *fizz = [[YZFizz alloc] init];
    _fizz = fizz;
    [fizz addObserver:self
           forKeyPath:@"number"
              options:NSKeyValueObservingOptionNew
              context:nil];
    fizz.number = @2;
    
    
}
- (void)dealloc {
    [self.fizz removeObserver:self forKeyPath:@"number" context:nil];
}
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    if ([keyPath isEqualToString:@"number"]) {
        NSLog(@"%@",change);
    }
    
}


@end
