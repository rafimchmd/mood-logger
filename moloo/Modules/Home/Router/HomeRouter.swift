//
//  HomeRouter.swift
//  moloo
//
//  Created by Rafi Mochamad Fahreza on 19/10/22.
//

import Foundation
import UIKit


class HomeRouter: HomeRouterProtocol, TabBarModuleProtocol {
    var tabIcon: UIImage = R.image.homeTabIcon()!
    
    var tabName: String = "Beranda"
    
    weak var viewController: UIViewController?
    
    func assembleModule() -> UIViewController {
        let view = R.storyboard.homeStoryboard.homeViewController()!
        let router = HomeRouter()
        router.viewController = view
        return view
    }
}
