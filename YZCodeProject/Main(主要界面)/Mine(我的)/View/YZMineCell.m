//
//  YZMineCell.m
//  YZCodeProject
//
//  Created by jonzhang on 2019/8/29.
//  Copyright © 2019 xinmei. All rights reserved.
//

#import "YZMineCell.h"
#import "YZMineModel.h"

@implementation YZMineCell

+ (YZMineCell *)cellWithTableView:(UITableView *)tableView {
    
    static NSString * cellID = @"YZMineCell";
    YZMineCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[YZMineCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    return cell;
}

- (void)setModel:(YZMineModel *)model {
    
    _model = model;
    
    self.textLabel.text = _model.title;
    
    
}


@end
