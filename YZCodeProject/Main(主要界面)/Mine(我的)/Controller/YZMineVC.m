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
#import "YZIosNetWorkVC.h"

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
    
    
    
    self.tabbleView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0,KScreenWidth , KScreenHeight) style:UITableViewStyleGrouped];
    
    self.tabbleView.dataSource = self;
    self.tabbleView.delegate = self;
    [self.view addSubview:self.tabbleView];
    
    

    [self _loadModel];
}
#pragma mark - 数据处理
- (void)_loadModel {
    
    // 类和类之间的通信
    
    
    YZMineModel *model0 = [[YZMineModel alloc] init];
    model0.titleSection = @"类通信";
    
    YZMineDetailModel * detailModel01 = [[YZMineDetailModel alloc] init];
    detailModel01.titleRow = @"kvo";
    
    // 第0个section
    model0.dataArr = [NSMutableArray array];
    [model0.dataArr addObject:detailModel01];
    
    
    // 网络
    YZMineModel *model1 = [[YZMineModel alloc] init];
    model1.titleSection = @"网络";
    
    YZMineDetailModel * detailModel10 = [[YZMineDetailModel alloc] init];
    detailModel10.titleRow = @"原生";
    // 第1个secton
    model1.dataArr = [NSMutableArray array];
    [model1.dataArr addObject:detailModel10];

    
    
    //
    [self.dateArr addObject:model0];
    [self.dateArr addObject:model1];
    
    [self.tabbleView reloadData];
    
}

#pragma mark - UITableViewDataSource,UITableViewDelegate
- (NSInteger )numberOfSectionsInTableView:(UITableView *)tableView {
    
    return self.dateArr.count;
}
- (NSInteger )tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    YZMineModel * mineModel = self.dateArr[section];
    
    return mineModel.dataArr.count;
}
- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    YZMineModel * mineModel = self.dateArr[section];

    return mineModel.titleSection;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    YZMineCell *cell = [YZMineCell cellWithTableView:tableView];
    YZMineModel * mineModel = self.dateArr[indexPath.section];
    YZMineDetailModel *model = mineModel.dataArr[indexPath.row];
    
    cell.model = model ;
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    YZMineModel * mineModel = self.dateArr[indexPath.section];
    YZMineDetailModel *model = mineModel.dataArr[indexPath.row];
    
    if ([model.titleRow isEqualToString:@"kvo"]) {
        YZLearnKVOVC * kvoVC = [[YZLearnKVOVC alloc] init];

        [self.navigationController pushViewController:kvoVC animated:YES];
        
    }else if ([model.titleRow isEqualToString:@"原生"]){
        YZIosNetWorkVC * iosNetWorkVC = [[YZIosNetWorkVC  alloc] init ];
        [self.navigationController pushViewController:iosNetWorkVC animated:YES];
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
