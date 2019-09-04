//
//  YZMineModel.h
//  YZCodeProject
//
//  Created by jonzhang on 2019/8/29.
//  Copyright © 2019 xinmei. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@interface YZMineModel : NSObject
@property (nonatomic, copy) NSString *titleSection;
@property (nonatomic, strong) NSMutableArray *dataArr;
@end
@interface YZMineDetailModel : NSObject
@property (nonatomic, copy) NSString *titleRow;
@end

NS_ASSUME_NONNULL_END
