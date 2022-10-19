//
//  TabBarRouter.swift
//  moloo
//
//  Created by Rafi Mochamad Fahreza on 04/10/22.
//

import Foundation
import UIKit

class TabBarRouter: TabBarRouterProtocol {
    var rootRouter: RootRouter?
    
    static func installToWindow(rootRouter: RootRouter, window: UIWindow, child: [TabBarModuleProtocol]) -> TabBarRouterProtocol {
        return TabBarRouter().setupScreen(rootRouter: rootRouter, window: window, child: child, selectedIndex: nil)
    }
    
    static func installToWindow(rootRouter: RootRouter, window: UIWindow, child: [TabBarModuleProtocol], selectedIndex: Int) -> TabBarRouterProtocol {
        return TabBarRouter().setupScreen(rootRouter: rootRouter, window: window, child: child, selectedIndex: selectedIndex)
    }
    
    private func setupScreen(rootRouter: RootRouter, window: UIWindow, child: [TabBarModuleProtocol], selectedIndex: Int?) -> TabBarRouterProtocol {
        let view = R.storyboard.tabBarStoryboard.tabBarViewController()!
        let router = TabBarRouter()
        router.rootRouter = rootRouter
        
        var viewControllers = [UIViewController] ()
        let tabBarController = view as UITabBarController
        
        for childModule in child {
            let tabBarItem = UITabBarItem()
            tabBarItem.image = childModule.tabIcon.withRenderingMode(.automatic)
            tabBarItem.title = childModule.tabName
            let viewController = childModule.assembleModule()
            let navigationController = UINavigationController(rootViewController: viewController)
            navigationController.tabBarItem = tabBarItem
            navigationController.setNavigationBarHidden(false, animated: false)
            navigationController.title = childModule.tabName
            viewControllers.append(navigationController)
        }
        tabBarController.viewControllers = viewControllers
        if let index = selectedIndex {
            tabBarController.selectedIndex = index
        }
        window.rootViewController = tabBarController
        return router
    }
}
