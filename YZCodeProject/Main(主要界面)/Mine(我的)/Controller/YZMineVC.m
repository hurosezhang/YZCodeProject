//
//  YZMineVC.m
//  YZCodeProject
//
//  Created by jonzhang on 2019/8/16.
//  Copyright © 2019 xinmei. All rights reserved.
//

#import "YZMineVC.h"
#import "YZScreen.h"
#import "YZMineCell.h"
#import "YZMineModel.h"
#import "YZLearnKVOVC.h"
@interface YZMineVC ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tabbleView;
@property (nonatomic, strong) NSMutableArray *dateArr;

@end

@implementation YZMineVC
- (instancetype)init {
    if (self = [super init]) {
        
        self.tabBarItem.title = @"我的";
        self.view.backgroundColor = [UIColor greenColor];

    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tabbleView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0,KScreenWidth , KScreenHeight)];
    self.tabbleView.dataSource = self;
    self.tabbleView.delegate = self;
    [self.view addSubview:self.tabbleView];

    [self _loadModel];
}
#pragma mark - 数据处理
- (void)_loadModel {
    
    YZMineModel *model = [[YZMineModel alloc] init];
    model.title = @"kvo";
    [self.dateArr addObject:model];
    
    [self.tabbleView reloadData];
    
}

#pragma mark - UITableViewDataSource,UITableViewDelegate
- (NSInteger )tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dateArr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    YZMineCell *cell = [YZMineCell cellWithTableView:tableView];
    YZMineModel *model = self.dateArr[indexPath.row];
    cell.model = model ;
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    YZMineModel *model = self.dateArr[indexPath.row];
    
    if ([model.title isEqualToString:@"kvo"]) {
        YZLearnKVOVC * kvoVC = [[YZLearnKVOVC alloc] init];
        
        [self.navigationController pushViewController:kvoVC animated:YES];
    }
    

    
}
#pragma mark - 懒加载
- (NSMutableArray *)dateArr {
    
    if (!_dateArr) {
        _dateArr = [NSMutableArray array];
    }
    return _dateArr;
    
}

@end
