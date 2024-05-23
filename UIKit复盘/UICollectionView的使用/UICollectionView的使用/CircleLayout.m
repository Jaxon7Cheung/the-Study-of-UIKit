//
//  CircleLayout.m
//  UICollectionView的使用
//
//  Created by 张旭洋 on 2024/1/20.
//

#import "CircleLayout.h"

@implementation CircleLayout {
    NSMutableArray* _attributeArray;
}

- (void)prepareLayout {
    [super prepareLayout];
    
    //获取item的个数
    self.itemCount = (int)[self.collectionView numberOfItemsInSection: 0];
    _attributeArray = [[NSMutableArray alloc] init];
    
    
    //先设定大圆的半径，取长和宽的最小值
    CGFloat radius = MIN(self.collectionView.frame.size.width, self.collectionView.frame.size.height) / 2;
    //计算圆心位置
    CGPoint center = CGPointMake(self.collectionView.frame.size.width / 2, self.collectionView.frame.size.height / 2);
    //每个item大小为50*50，即半径为25
    for (int i = 0; i < self.itemCount; ++i) {
        NSIndexPath* indexPath = [NSIndexPath indexPathForItem: i inSection: 0];
        UICollectionViewLayoutAttributes* attris = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath: indexPath];
        
        //设置item大小
        attris.size = CGSizeMake(50, 50);
        
        //计算每个item中心坐标（圆心位置）
        float x = center.x + cosf(2 * M_PI / self.itemCount * i) * (radius - 25);
        float y = center.y + sinf(2 * M_PI / self.itemCount * i) * (radius - 25);
        attris.center = CGPointMake(x, y);
        
        [_attributeArray addObject: attris];
    }
}

//设置内容区域的大小
//作用同赋值contentSize属性一样，返回一个CollectionView可以滑动的范围尺寸
- (CGSize)collectionViewContentSize {
    return self.collectionView.frame.size;
}

- (NSArray<__kindof UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    return _attributeArray;
}

@end
