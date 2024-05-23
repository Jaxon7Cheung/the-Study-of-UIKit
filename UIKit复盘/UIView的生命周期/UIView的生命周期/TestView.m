//
//  TestView.m
//  UIView的生命周期
//
//  Created by 张旭洋 on 2023/10/11.
//

#import "TestView.h"

@implementation TestView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

//- (void)didAddSubview:(UIView *)subview;
//- (void)willRemoveSubview:(UIView *)subview;

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

//view粘到superView上
- (void)willMoveToSuperview:(nullable UIView *)newSuperview {
    [super willMoveToSuperview: newSuperview];
}

- (void)didMoveToSuperview {
    [super didMoveToSuperview];
}

//view包括父superView粘在window上，在屏幕中展示
- (void)willMoveToWindow:(nullable UIWindow *)newWindow {
    [super willMoveToWindow: newWindow];
}

- (void)didMoveToWindow {
    [super didMoveToWindow];
}

@end
