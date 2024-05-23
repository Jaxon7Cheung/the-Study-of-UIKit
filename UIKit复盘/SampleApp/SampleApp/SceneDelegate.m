//
//  SceneDelegate.m
//  SampleApp
//
//  Created by 张旭洋 on 2023/8/10.
//

#import "SceneDelegate.h"
#import "ViewController.h"

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
    
    UITabBarController* tabBarController = [[UITabBarController alloc] init];
    
    ViewController* viewController1 = [[ViewController alloc] init];
    viewController1.navigationItem.title = @"微信";
    UINavigationController* navigationController = [[UINavigationController alloc] initWithRootViewController: viewController1];
    //navigationController.view.backgroundColor = [UIColor lightGrayColor];
    navigationController.tabBarItem.title = @"微信";
    navigationController.tabBarItem.image = [UIImage imageNamed: @"weixin.png"];
    navigationController.tabBarItem.selectedImage = [UIImage imageNamed: @""];
    navigationController.navigationBar.tintColor = [UIColor grayColor];
    
    UIViewController* viewController2 = [[UIViewController alloc] init];
    viewController2.view.backgroundColor = [UIColor whiteColor];
    viewController2.tabBarItem.title = @"通讯录";
    viewController2.tabBarItem.image = [UIImage imageNamed: @"tongxunlu.png"];
    
    UIViewController* viewController3 = [[UIViewController alloc] init];
    viewController3.view.backgroundColor = [UIColor darkGrayColor];
    viewController3.tabBarItem.title = @"发现";
    viewController3.tabBarItem.image = [UIImage imageNamed: @"faxian.png"];
    
    UIViewController* viewController4 = [[UIViewController alloc] init];
    viewController4.view.backgroundColor = [UIColor orangeColor];
    viewController4.tabBarItem.title = @"我";
    viewController4.tabBarItem.image = [UIImage imageNamed: @"wo.png"];
    
    //tabBarController.viewControllers = [[NSArray alloc] initWithObjects: viewController1, viewController2, viewController3, viewController4, nil];
    [tabBarController setViewControllers: @[navigationController, viewController2, viewController3, viewController4] animated: YES];
    tabBarController.tabBar.tintColor = [UIColor greenColor];
    
    self.window.rootViewController = tabBarController;
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
