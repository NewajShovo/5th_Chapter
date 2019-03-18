//
//  AppDelegate.m
//  Hypnosister
//
//  Created by Shafiq Shovo on 13/3/19.
//  Copyright © 2019 Shafiq Shovo. All rights reserved.
//

#import "AppDelegate.h"
#import "BNRHypnosisView.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [ [ UIWindow alloc] initWithFrame:[ [ UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [ UIColor whiteColor];
    ViewController *rootController = [[ViewController alloc] init];
    
    //UINavigationController  *navController = [[UINavigationController //alloc]initWithRootViewController:rootController];
    
    self.window.rootViewController = rootController;
    
    //[self.window makeKeyAndVisible];
    
    CGRect screenRect = self.window.bounds;
    CGRect bigRect = screenRect;
    bigRect.size.width *=2.0;
    //bigRect.size.height *=2.0;
    
    UIScrollView *scrollView = [ [ UIScrollView alloc] initWithFrame:screenRect];
    scrollView.pagingEnabled = YES;
    [self.window.rootViewController.view addSubview:scrollView];
    scrollView.backgroundColor = [UIColor whiteColor];
    BNRHypnosisView *hypnosisView = [ [BNRHypnosisView alloc] initWithFrame:screenRect];
    [ scrollView addSubview:hypnosisView];
    scrollView.contentSize = bigRect.size;
    self.window.backgroundColor = [ UIColor whiteColor];
    [ self.window makeKeyAndVisible];
    screenRect.origin.x += screenRect.size.width;
    BNRHypnosisView *anotherView = [ [ BNRHypnosisView alloc] initWithFrame:screenRect];
    [ scrollView addSubview:anotherView];
    scrollView.contentSize = bigRect.size;
    /*
    // Override point for customization after application launch.
    self.window = [ [ UIWindow alloc] initWithFrame:[ [ UIScreen mainScreen] bounds]];
     */
    //CGRect firstFrame = CGRectMake(160, 450, 100, 150);
    /*
    CGRect firstFrame = self.window.bounds;
    BNRHypnosisView *firstView = [ [ BNRHypnosisView alloc] initWithFrame:firstFrame];
    //firstView.backgroundColor= [ UIColor whiteColor];
    //firstView.userInteractionEnabled = YES;
    [self.window.rootViewController.view addSubview:firstView];
    self.window.backgroundColor = [ UIColor clearColor];
    [ self.window makeKeyAndVisible];
   */
    /*
    CGRect secondFrame = CGRectMake(170,470, 50, 50);
    BNRHypnosisView *secondView = [ [ BNRHypnosisView alloc] initWithFrame:secondFrame];
    secondView.backgroundColor = [ UIColor blueColor];
    [self.window addSubview:secondView];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    */
   
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
