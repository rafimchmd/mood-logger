//
//  AppDelegate.swift
//  moloo
//
//  Created by Rafi Mochamad Fahreza on 04/10/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        self.setRootViewController()
        self.setupNavigation()
        self.setupBarNavigation()
        return true
    }
    
    private func setRootViewController() {
        RootRouter().setTabBarMenu(in: window!)
    }
    
    private func setupNavigation() {
        UINavigationBar.appearance().barTintColor = .white
        UINavigationBar.appearance().tintColor = #colorLiteral(red: 0.2980392157, green: 0.6196078431, blue: 0.862745098, alpha: 1)
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.2980392157, green: 0.6196078431, blue: 0.862745098, alpha: 1)]
    }
    
    private func setupBarNavigation() {
        UITabBar.appearance().barTintColor = .white
        UITabBar.appearance().selectedImageTintColor = #colorLiteral(red: 0.2980392157, green: 0.6196078431, blue: 0.862745098, alpha: 1)
        UITabBar.appearance().unselectedItemTintColor = .lightGray
    }
}

