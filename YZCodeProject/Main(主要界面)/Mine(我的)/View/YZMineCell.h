//
//  YZMineCell.h
//  YZCodeProject
//
//  Created by jonzhang on 2019/8/29.
//  Copyright © 2019 xinmei. All rights reserved.
//

#import <UIKit/UIKit.h>

@class YZMineDetailModel;
@interface YZMineCell : UITableViewCell
@property (nonatomic, strong) YZMineDetailModel *model;
+ (YZMineCell *)cellWithTableView:(UITableView *)tableView;
@end

