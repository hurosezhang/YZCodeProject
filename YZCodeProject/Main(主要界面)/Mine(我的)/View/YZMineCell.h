//
//  YZMineCell.h
//  YZCodeProject
//
//  Created by jonzhang on 2019/8/29.
//  Copyright © 2019 xinmei. All rights reserved.
//

#import <UIKit/UIKit.h>

@class YZMineModel;
@interface YZMineCell : UITableViewCell
@property (nonatomic, strong) YZMineModel *model;
+ (YZMineCell *)cellWithTableView:(UITableView *)tableView;
@end

