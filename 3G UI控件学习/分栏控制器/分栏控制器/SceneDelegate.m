//
//  SceneDelegate.m
//  分栏控制器
//
//  Created by 张旭洋 on 2023/7/17.
//

#import "SceneDelegate.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    
    UIWindowScene* windowScene = (UIWindowScene *)scene;
    self.window = [[UIWindow alloc] initWithWindowScene: windowScene];
    self.window.frame = windowScene.coordinateSpace.bounds;
    //显示window
    [self.window makeKeyAndVisible];
    
    //创建视图控制器一
    VCFirst* vcFirst = [[VCFirst alloc] init];
    vcFirst.view.backgroundColor = [UIColor grayColor];
    //创建视图控制器二
    VCSecond* vcSecond = [[VCSecond alloc] init];
    //黄色背景
    vcSecond.view.backgroundColor = [UIColor yellowColor];
    //创建视图控制器三
    VCThird* vcThird = [[VCThird alloc] init];
    //橙色背景🙎
    vcThird.view.backgroundColor = [UIColor orangeColor];
    
    vcFirst.title = @"视图1";
    vcSecond.title = @"视图2";
    vcThird.title = @"视图3";

    //蓝色背景
    //这段代码会调用viewDidLoad

    //创建分栏控制器对象
    UITabBarController* tbController = [[UITabBarController alloc] init];
    
    //创建一个控制器数组对象
    //将所有要被分栏控制器管理的对象添加到数组中
    NSArray* arrayVC = [NSArray arrayWithObjects: vcFirst, vcSecond, vcThird, nil];
    
    //将分栏视图控制器管理数组赋值
    tbController.viewControllers = arrayVC;
    
    //将分栏控制器作为根视图控制器
    self.window.rootViewController = tbController;
    
    //设置选中的视图控制器的索引
    //通过索引来确定显示哪一个控制器
    tbController.selectedIndex = 0;
    
    //当前选中的控制器对象
    if (tbController.selectedViewController == vcThird)
    {
        NSLog(@"当前显示的是控制器三");
    }
    
    //设置分栏控制器透明度
    //tbController.tabBar.translucent = NO;
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
