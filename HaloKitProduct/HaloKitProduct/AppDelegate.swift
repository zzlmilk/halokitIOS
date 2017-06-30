//
//  AppDelegate.swift
//  HaloKitProduct
//
//  Created by 范博 on 2017/6/28.
//  Copyright © 2017年 范博. All rights reserved.
//

import UIKit
import UserNotifications


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate,UNUserNotificationCenterDelegate {

    var window: UIWindow?
    static let kGtAppId     =  "yw6pQJJJ3t8iY5K4BQSKP2"
    static let kGtAppkey    =  "e3GTtzhDPWAvxQ53QpsSl1"
    static let kGtAppSecret = "O1WsRptOfZ70u5sE6GqV74"


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        
        
         self.window = UIWindow(frame: UIScreen.main.bounds)
         self.window?.backgroundColor = UIColor.white;
         self.window?.makeKeyAndVisible();
        
        
        
//         let main = FrameWorkViewController();
        
    
         self.window?.rootViewController = BGLoginViewController.initVC(param: nil);
        
        
        
        return true
    }

    
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
//    func toMain() {
//        self.window = UIWindow(frame: UIScreen.main.bounds)
////        guard let navigationController = self.initialViewController()else {
////            fatalError("初始 VC 错误")
////        }
//        
//        self.window?.rootViewController = navigationController
//        self.window?.makeKeyAndVisible()
//    }
}

extension AppDelegate {
    
//    func initialViewController() -> UIViewController? {
//        return BoGeStoryboard.shareSB[.BoGeMain].instantiateInitialViewController()
//        
//    }
    
    func registerGeTui(){
//        [GeTuiSdk startSdkWithAppId:kGtAppId appKey:kGtAppkey appSecret:kGtAppSecret delegate:self];
        self.registerUserNotification()
    }
    //注册远程通知
    func registerUserNotification(){
        
        if #available(iOS 10.0, *) {
            UIApplication.shared.registerForRemoteNotifications()
            let center = UNUserNotificationCenter.current()
            center.delegate = self //DID NOT WORK WHEN self WAS MyOtherDelegateClass()
            center.requestAuthorization(options: [.alert, .sound, .badge]) {
                (granted, error) in
                // Enable or disable features based on authorization.
                if granted {
                    // update application settings
                }
            }
        
        }else if #available(iOS 8.0, *) {
            
            let settings = UIUserNotificationSettings(types: [.alert, .badge, .sound], categories: nil)
            UIApplication.shared.registerUserNotificationSettings(settings)
            

        }else{
//            let type = UIRemoteNotificationType(rawValue: .alert | .badge | .sound])
        
        }
        
    }
    
    
    
}


