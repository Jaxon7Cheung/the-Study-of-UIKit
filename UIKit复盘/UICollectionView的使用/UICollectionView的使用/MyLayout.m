//
//  MyLayout.m
//  UICollectionView的使用
//
//  Created by 张旭洋 on 2024/1/20.
//

#import "MyLayout.h"

@implementation MyLayout {
    //自定义的布局配置数组，保存每个cell的布局信息attribute
    NSMutableArray* _attributeArray;
}

//布局前的准备会调用这个方法
- (void)prepareLayout {
    _attributeArray = [[NSMutableArray alloc] init];
    [super prepareLayout];
    
    //为方便演示，设置为静态的2列
    //计算每一个Item的宽度
    //sectionInset表示item距离section四个方向的内边距 UIEdgeInsetsMake(top, left, bottom, right)
    CGFloat WIDTH = ([UIScreen mainScreen].bounds.size.width - self.sectionInset.left - self.sectionInset.right - self.minimumInteritemSpacing) / 2;
    
    //创建数组保存每一列的高度（实际是总高度），这样就可以在布局时始终将下一个Item放在最短的列下面
    CGFloat colHeight[2] = {self.sectionInset.top, self.sectionInset.bottom};
    
    //遍历每一个Item来设置布局
    for (int i = 0; i < self.itemCount; ++i) {
        
        //每个Item在CollectionView中的位置
        NSIndexPath* indexPath = [NSIndexPath indexPathForItem: i inSection: 0];
        
        //通过indexPath创建一个布局属性类
        UICollectionViewLayoutAttributes* attris = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath: indexPath];
        
        
        //随机一个高度，在77～200之间
        CGFloat height = arc4random() % 123 + 77;
        
        //哪一列高度小，则放到哪一列下面
        int indexCol = 0;  //标记短的列
        if (colHeight[0] < colHeight[1]) {
            //将新的Item高度加入到短的一列
            colHeight[0] = colHeight[0] + height + self.minimumLineSpacing;
            indexCol = 0;
        } else {
            colHeight[1] = colHeight[1] + height + self.minimumLineSpacing;
            indexCol = 1;
        }
        
        //设置Item的位置
        attris.frame = CGRectMake(self.sectionInset.left + (self.minimumInteritemSpacing + WIDTH) * indexCol, colHeight[indexCol] - height - self.minimumLineSpacing, WIDTH, height);
        
        [_attributeArray addObject: attris];

    }
    
    //itemSize赋值，确保滑动范围在正确区间，这里是通过将所有的Item高度平均化计算出来的
    //（以最高的列为标准）
    if (colHeight[0] > colHeight[1]) {
        self.itemSize = CGSizeMake(WIDTH, (colHeight[0] - self.sectionInset.top) * 2 / self.itemCount - self.minimumLineSpacing);
    } else {
        self.itemSize = CGSizeMake(WIDTH, (colHeight[1] - self.sectionInset.top) * 2 / self.itemCount - self.minimumLineSpacing);
    }
}

//此系统提供的方法会返回设置好的布局数组
- (NSArray<__kindof UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    return _attributeArray;
}

@end
