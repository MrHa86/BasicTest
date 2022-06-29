//
//  AppDelegate.swift
//  BaiKiemTraUI
//
//  Created by Vu Nam Ha on 28/06/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        let homeVC = BaiSo7ViewController()
        window?.rootViewController = homeVC
        window?.makeKeyAndVisible()
        
        return true
    }

    


}

