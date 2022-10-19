//
//  RootRouter.swift
//  moloo
//
//  Created by Rafi Mochamad Fahreza on 04/10/22.
//

import Foundation
import UIKit

class RootRouter: RootRouterProtocol {
    
    var tabBarModuleRouter: TabBarRouterProtocol?
    
    func setHomeView(in window: UIWindow) {
        
    }
    
    func setProfileView(in window: UIWindow) {
        
    }
    
    func setTabBarMenu(in window: UIWindow) {
        window.makeKeyAndVisible()
        let wireframe = self.setupScreen(in: window)
        tabBarModuleRouter = TabBarRouter.installToWindow(rootRouter: self, window: window, child: wireframe)
    }
    
    private func setupScreen(in window: UIWindow) -> [TabBarModuleProtocol] {
        var routers = [TabBarModuleProtocol]()
        
        // home
        let homepage = HomeRouter()
        routers.append(homepage)
        
        // akun
        let account = AccountRouter()
        routers.append(account)
        
        return routers
    }
}
