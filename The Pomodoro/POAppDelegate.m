//
//  POAppDelegate.m
//  The Pomodoro
//
//  Created by Joshua Howland on 6/3/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "POAppDelegate.h"
#import "POTimerViewController.h"
#import "PORoundsViewController.h"


@implementation POAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];

    POTimerViewController *timerViewController = [POTimerViewController new];
    timerViewController.tabBarItem.title = @"Timer";
    //timerViewController.tabBarItem.image = UIImage {image name};
    
    PORoundsViewController *roundsViewController = [PORoundsViewController new];
    roundsViewController.tabBarItem.title = @"Rounds";
    
    tabBarController.viewControllers = @[roundsViewController, timerViewController];
    
    // UIColor *navigationBarColor = [UIColor redColor];
    [[UINavigationBar appearance] setBarTintColor:[UIColor redColor]];
    [[UITabBar appearance] setTintColor:[UIColor blueColor]];
    
    
    self.window.rootViewController = tabBarController;
    
    
    // above
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
