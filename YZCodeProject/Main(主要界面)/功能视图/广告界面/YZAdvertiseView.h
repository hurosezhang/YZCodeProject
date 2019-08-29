//
//  YZAdvertiseView.h
//  YZCodeProject
//
//  Created by jonzhang on 2019/8/19.
//  Copyright © 2019 xinmei. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
#define kscreenWidth [UIScreen mainScreen].bounds.size.width
#define kscreenHeight [UIScreen mainScreen].bounds.size.height
#define kUserDefaults [NSUserDefaults standardUserDefaults]
static NSString *const adImageName = @"adImageName";
static NSString *const adUrl = @"adUrl";


/**
 1,SD 显示图片自带缓存功能
 2,启动页的适配在图片集asset里,遮挡页不同的机型从bundle里加载不同的图片
 */
@interface YZAdvertiseView : UIView

/** 显示广告页面方法*/
- (void)show;

/** 图片路径*/
@property (nonatomic, copy) NSString *filePath;

@end

NS_ASSUME_NONNULL_END
