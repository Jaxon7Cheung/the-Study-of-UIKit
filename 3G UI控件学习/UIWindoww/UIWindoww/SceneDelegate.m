//
//  SceneDelegate.m
//  UIWindoww
//
//  Created by 张旭洋 on 2023/6/1.
//

#import "SceneDelegate.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    //创建一个UIWindow对象
    ///整个程序中只有一个UIWindow对象
    //UIWindow也是继承于UIView
    //UIWindow是一个特殊的UIView
    //UIScreen：表示屏幕硬件表示类
    //mainScreen获得主屏幕设备信息
    //bounds表示屏幕的宽高值
    //self.window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
    //新版不用初始化⬆️
    
    
    UIWindowScene* windowScene = (UIWindowScene *)scene;
    self.window = [[UIWindow alloc] initWithWindowScene: windowScene];
    self.window.frame = windowScene.coordinateSpace.bounds;
    
    //创建一个视图控制器作为UIWindow的根视图控制器
    self.window.rootViewController = [[UIViewController alloc] init];
    
    //设置背景颜色
    self.window.backgroundColor = [UIColor magentaColor];
    
    
    UIView* view = [[UIView alloc] initWithFrame: CGRectMake(100, 100, 150, 150)];
    view.backgroundColor = [UIColor orangeColor];
    
    //背景视图
    UIView* backView = [[UIView alloc] initWithFrame: CGRectMake(0, 0, 240, 360)];
    backView.backgroundColor = [UIColor greenColor];
    
    //将backView作为view的父亲视图
    //子视图的坐标是参照父亲视图的坐标系的
    //当父亲视图移动时，所有的子视图都会移动
    [backView addSubview: view];
    [self.window addSubview: backView];
    
    //使window有效并显示到屏幕上
    [self.window makeKeyAndVisible];
    
    //每一个view都有一个window属性,ta们是同一个UIWindow对象
    NSLog(@"%@", view.window);
    NSLog(@"%@", backView.window);
    NSLog(@"%@", self.window);
    NSLog(@"%@", self.window.rootViewController.view.window);
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end


