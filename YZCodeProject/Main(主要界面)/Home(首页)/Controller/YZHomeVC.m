//
//  YZHomeVC.m
//  YZCodeProject
//
//  Created by jonzhang on 2019/8/16.
//  Copyright © 2019 xinmei. All rights reserved.
//

#import "YZHomeVC.h"
#import "YZScreen.h"
#import "YZHomeModel.h"
#import "YZHomeCell.h"
#import "YZLearnKVOVC.h"

@interface YZHomeVC ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tabbleView;
@property (nonatomic, strong) NSMutableArray <YZHomeModel *>*dateArr;
@end

@implementation YZHomeVC
- (instancetype)init {
    if (self = [super init]) {
        self.tabBarItem.title = @"首页";
        self.view.backgroundColor = [UIColor redColor];

        [self _loadModel];
    }
    return self;
}
#pragma mark - 生命周期
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tabbleView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0,KScreenWidth , KScreenHeight)];
    self.tabbleView.dataSource = self;
    self.tabbleView.delegate = self;
    [self.view addSubview:self.tabbleView];
}
#pragma mark - 数据处理
- (void)_loadModel {
    
    
    YZHomeModel *model = [[YZHomeModel alloc] init];
    model.titie = @"KVO";
    [self.dateArr addObject:model];
    
}
#pragma mark - UITableViewDataSource,UITableViewDelegate
- (NSInteger )tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dateArr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    YZHomeCell *cell = [YZHomeCell cellWithTableView:tableView];
    YZHomeModel *model = self.dateArr[indexPath.row];
    cell.model = model ;
    
    return cell;
}
#pragma mark - 懒加载
- (NSMutableArray *)dateArr {
 
    if (!_dateArr) {
        _dateArr = [NSMutableArray array];
    }
    return _dateArr;
    
}

@end
