//
//  SceneDelegate.m
//  TabBar样式页面
//
//  Created by 张旭洋 on 2023/10/12.
//

#import "SceneDelegate.h"

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
    
    UIViewController* viewController1 = [[UIViewController alloc] init];
    viewController1.view.backgroundColor = [UIColor redColor];
    viewController1.tabBarItem.title = @"微信";
    viewController1.tabBarItem.image = [UIImage imageNamed: @"shouye.png"];
    viewController1.tabBarItem.selectedImage = [UIImage imageNamed: @""];
    UIViewController* viewController2 = [[UIViewController alloc] init];
    viewController2.view.backgroundColor = [UIColor yellowColor];
    viewController2.tabBarItem.title = @"通讯录";
    viewController2.tabBarItem.image = [UIImage imageNamed: @"haoyou.png"];
    viewController2.tabBarItem.selectedImage = [UIImage imageNamed: @""];
    UIViewController* viewController3 = [[UIViewController alloc] init];
    viewController3.view.backgroundColor = [UIColor blueColor];
    viewController3.tabBarItem.title = @"发现";
    viewController3.tabBarItem.image = [UIImage imageNamed: @"dongtai.png"];
    viewController3.tabBarItem.selectedImage = [UIImage imageNamed: @""];
    UIViewController* viewController4 = [[UIViewController alloc] init];
    viewController4.view.backgroundColor = [UIColor lightGrayColor];
    viewController4.tabBarItem.title = @"我";
    viewController4.tabBarItem.image = [UIImage imageNamed: @"wode.png"];
    viewController4.tabBarItem.selectedImage = [UIImage imageNamed: @""];
    
    //tabBarController.viewControllers = [[NSArray alloc] initWithObjects: viewController1, viewController2, viewController3, viewController4, nil];
    [tabBarController setViewControllers: @[viewController1, viewController2, viewController3, viewController4] animated: YES];
    //为什么每个UIViewController有 tabBarItem 这个属性，api的源文件里面并没有这个属性
    //根据Apple的习惯，如果类的某一些属性，不是普世通用的，是在实现某些特定功能的时候才需要，那么一般的实现方式是声明一个类的扩展，然后声明这些属性，整体和特定的功能写在一起。这个也算是一个习惯，对于常用的开源项目和我们自定义的扩展，一般也都会和指定的场景声明在一起。回归到你的问题，如果我们没有tabbarcontroller，那么使用UIViewController是不需要关注tabBarItem属性的。那么根据上面所讲的，针对这种特殊的场景，一般就是对UIViewController进行扩展，然后写到tabbarcontroller相关的逻辑和文件中。所以我们可以在UITabbarController.h 中 找到@interface UIViewController (UITabBarControllerItem)，以及对应的tabBarItem属性。当然如果想要定位这个属性在哪里声明，可以在xcode中按住command，然后点击这个属性，之后选择jump to Definition，xcode会自动跳转到属性声明的文件中。
    
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
