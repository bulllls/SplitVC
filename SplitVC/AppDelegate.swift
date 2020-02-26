//
//  AppDelegate.swift
//  SplitVC
//
//  Created by Ruslan Filistovich on 26/02/2020.
//  Copyright © 2020 Ruslan Filistovich. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        let masterController = MasterController()
        let masterNavigationController = UINavigationController(rootViewController: masterController)

        let detailController = DetailController()
        let detailNavigationController = UINavigationController(rootViewController: detailController)

        let splitViewController =  UISplitViewController()
        splitViewController.delegate = self
        splitViewController.viewControllers = [masterNavigationController, detailNavigationController]
        splitViewController.preferredDisplayMode = UISplitViewController.DisplayMode.allVisible
        
        self.window?.rootViewController = splitViewController
        self.window?.makeKeyAndVisible()
        return true
    }

}

extension AppDelegate: UISplitViewControllerDelegate {

    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        return true
    }
}
