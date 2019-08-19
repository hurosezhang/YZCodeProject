//
//  YZHomeCell.m
//  YZCodeProject
//
//  Created by jonzhang on 2019/8/19.
//  Copyright © 2019 xinmei. All rights reserved.
//

#import "YZHomeCell.h"
@interface YZHomeCell ()

@end
@implementation YZHomeCell
+ (instancetype)cellWithTableView:(UITableView *)tableView {
    static NSString * yzHomeCell = @"YZHomeCell";
    YZHomeCell *cell = [tableView dequeueReusableCellWithIdentifier:yzHomeCell];
    if (cell == nil) {
        // 此处应为YZHomeCell 不应该为UITableViewCell ,若为UITableViewCell 则没有子类的属性和方法
        // 
        cell = [[YZHomeCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:yzHomeCell];
    }
    return cell;
    
}
- (void)setModel:(YZHomeModel *)model {
    
    _model = model;
    
    self.textLabel.text = _model.titie;
    
    
}


@end
