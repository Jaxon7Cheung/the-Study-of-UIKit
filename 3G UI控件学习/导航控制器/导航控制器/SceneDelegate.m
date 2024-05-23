//
//  SceneDelegate.m
//  导航控制器
//
//  Created by 张旭洋 on 2023/7/17.
//

#import "SceneDelegate.h"
#import "VCRoot.h"

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
    
    //创建一个根视图控制器
    VCRoot* root = [[VCRoot alloc] init];
    
    //创建导航控制器
    //导航控制器只要用来管理多个视图控制器的切换
    //层级的方式来管理多个视图控制器
    //创建控制器时，一定要有一个根视图控制器
    //参数一：就是作为导航控制器的根视图控制器
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController: root];
    
    //将window的根视图作为导航控制器
    self.window.rootViewController = nav;
    
    
    [self.window makeKeyAndVisible];
    
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
