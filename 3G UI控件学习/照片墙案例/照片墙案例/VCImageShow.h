//
//  VCImageShow.h
//  照片墙案例
//
//  Created by 张旭洋 on 2023/7/17.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VCImageShow : UIViewController

//图像视图的tag
@property (nonatomic, assign)NSUInteger imageTag;
//图像对象
@property (nonatomic, retain)UIImage* image;
//图像视图对象
@property (nonatomic, retain)UIImageView* imageView;

@end

NS_ASSUME_NONNULL_END
