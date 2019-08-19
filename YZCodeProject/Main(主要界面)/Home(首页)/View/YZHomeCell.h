//
//  YZHomeCell.h
//  YZCodeProject
//
//  Created by jonzhang on 2019/8/19.
//  Copyright © 2019 xinmei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YZHomeModel.h"

NS_ASSUME_NONNULL_BEGIN
@interface YZHomeCell : UITableViewCell
@property (nonatomic, strong) YZHomeModel *model;
+ (instancetype)cellWithTableView:(UITableView *)tableView ;
@end

NS_ASSUME_NONNULL_END
