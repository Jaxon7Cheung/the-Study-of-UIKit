//
//  SuperView.h
//  手动布局子视图
//
//  Created by 张旭洋 on 2023/7/16.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SuperView : UIView
{
    UIView* _view01;
    UIView* _view02;
    UIView* _view03;
    UIView* _view04;
}

- (void)createSubviews;

@end

NS_ASSUME_NONNULL_END
