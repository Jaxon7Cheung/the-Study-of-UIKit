//
//  ViewController.m
//  UICollectionView的使用
//
//  Created by 张旭洋 on 2024/1/18.
//

#import "ViewController.h"
#import "MyLayout.h"
#import "CircleLayout.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate/*, UICollectionViewDelegateFlowLayout*/>

@end

@implementation ViewController

//- (void)viewDidLoad {
//    [super viewDidLoad];
//    // Do any additional setup after loading the view.
//
//    self.view.backgroundColor = [UIColor blueColor];
//
//    //没显示的原因找到了
////    UICollectionViewLayout* flowLayOut = [[UICollectionViewLayout alloc] init];
//    UICollectionViewFlowLayout* flowLayOut = [[UICollectionViewFlowLayout alloc] init];
//    flowLayOut.scrollDirection = UICollectionViewScrollDirectionVertical;
//
//    CGFloat side = (self.view.bounds.size.width - 12) / 3;
//////    flowLayOut.scrollDirection = UICollectionViewScrollDirectionHorizontal;
//    flowLayOut.minimumLineSpacing = 6;
//    flowLayOut.minimumInteritemSpacing = 6;  //系统通过这个计算一行可以放多少个item，当发现放不下计算好的items时，为了撑满所在行，值就会变大
//    flowLayOut.itemSize = CGSizeMake(side, side);
////    flowLayOut.itemSize = CGSizeMake(self.view.frame.size.width / 2 - 17, 100);
//
//
//    UICollectionView* collectionView = [[UICollectionView alloc] initWithFrame: self.view.bounds collectionViewLayout: flowLayOut];
//    collectionView.dataSource = self;
//    collectionView.delegate = self;
//
//    [collectionView registerClass: [UICollectionViewCell class] forCellWithReuseIdentifier: @"UICollectionViewCell"];
//
//    [self.view addSubview: collectionView];
//
//
//}
//
////设置分区数
//- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
//    return 1;
//}
//
////设置每个分区的
//- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//    return 10;
//}
//
////每条item上cell的UI展现
//- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
//    //这个cell如果回收池子中没有，系统会为根据重用id为我们自动创建cell
//    //所以不需要判空了！！
//    UICollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier: @"UICollectionViewCell" forIndexPath: indexPath];
//
//    //随机颜色
//    cell.backgroundColor = [UIColor colorWithRed: arc4random() % 255 / 255.0 green: arc4random() % 255 / 255.0 blue: arc4random() % 255 / 255.0 alpha: 1.0];
//    //cell默认是50X50的大小
//
//    return cell;
//}
//
////实现delegate，自定义任何位置上cell的样式
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
//    if (indexPath.item % 2) {
//        return CGSizeMake((self.view.bounds.size.width - 12) / 3, (self.view.bounds.size.width - 12) / 3);
//    } else {
//        return CGSizeMake((self.view.bounds.size.width - 12) / 6, (self.view.bounds.size.width - 12) / 6);
//    }
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blueColor];
    
    //使用自定义的layout类
//    MyLayout* myLayout = [[MyLayout alloc] init];
//    myLayout.itemCount = 21;
    CircleLayout* circleLayout = [[CircleLayout alloc] init];
    
    UICollectionView* collectionView = [[UICollectionView alloc] initWithFrame: self.view.bounds collectionViewLayout: circleLayout];
    collectionView.backgroundColor = [UIColor blackColor];
    collectionView.dataSource = self;
    collectionView.delegate = self;
    
    [self.view addSubview: collectionView];
    
//    [collectionView registerClass: [UICollectionViewCell class] forCellWithReuseIdentifier: @"MyUICollectionView"];
    [collectionView registerClass: [UICollectionViewCell class] forCellWithReuseIdentifier: @"CircleUICollectionView"];
    
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 11;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
//    UICollectionViewCell* myCell = [collectionView dequeueReusableCellWithReuseIdentifier: @"MyUICollectionView" forIndexPath: indexPath];
    UICollectionViewCell* circleCell = [collectionView dequeueReusableCellWithReuseIdentifier: @"CircleUICollectionView" forIndexPath: indexPath];
    
    circleCell.layer.masksToBounds = YES;
    circleCell.layer.cornerRadius = 25;
    circleCell.backgroundColor = [UIColor colorWithRed: arc4random() % 255 / 255.0 green: arc4random() % 255 / 255.0 blue: arc4random() % 255 / 255.0 alpha: 1.0];
    
    return circleCell;
}

- (void)shift {
    
}

@end
