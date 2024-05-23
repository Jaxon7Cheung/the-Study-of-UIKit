//
//  SceneDelegate.m
//  Navigation的基础交互
//
//  Created by 张旭洋 on 2023/10/12.
//

#import "SceneDelegate.h"

#import "ViewController.h"

@interface SceneDelegate () <UITabBarControllerDelegate>

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
    UINavigationController* navigationController = [[UINavigationController alloc] initWithRootViewController: tabBarController];
    
    ViewController* viewController = [[ViewController alloc] init];
//    UIViewController* viewController1 = [[UIViewController alloc] init];
//    viewController1.view.backgroundColor = [UIColor redColor];
    viewController.tabBarItem.title = @"微信";
    viewController.tabBarItem.image = [UIImage imageNamed: @"shouye.png"];
    viewController.tabBarItem.selectedImage = [UIImage imageNamed: @""];
    //navigationController.navigationItem.rightBarButtonItem =
    
    UIViewController* viewController2 = [[UIViewController alloc] init];
    viewController2.view.backgroundColor = [UIColor yellowColor];
    viewController2.tabBarItem.title = @"通讯录";
    viewController2.tabBarItem.image = [UIImage imageNamed: @"haoyou.png"];
    viewController2.tabBarItem.selectedImage = [UIImage imageNamed: @""];
    UIViewController* viewController3 = [[UIViewController alloc] init];
    viewController3.view.backgroundColor = [UIColor yellowColor];
    viewController3.tabBarItem.title = @"发现";
    viewController3.tabBarItem.image = [UIImage imageNamed: @"dongtai.png"];
    viewController3.tabBarItem.selectedImage = [UIImage imageNamed: @""];
    UIViewController* viewController4 = [[UIViewController alloc] init];
    viewController4.view.backgroundColor = [UIColor yellowColor];
    viewController4.tabBarItem.title = @"我";
    viewController4.tabBarItem.image = [UIImage imageNamed: @"wode.png"];
    viewController4.tabBarItem.selectedImage = [UIImage imageNamed: @""];
    
    //tabBarController.viewControllers = [[NSArray alloc] initWithObjects: viewController1, viewController2, viewController3, viewController4, nil];
    [tabBarController setViewControllers: @[viewController, viewController2, viewController3, viewController4] animated: YES];
    
    tabBarController.delegate = self;
    
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];
}

//协议函数
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController API_AVAILABLE(ios(3.0)) {
    return YES;
}
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    NSLog(@"did select");
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
