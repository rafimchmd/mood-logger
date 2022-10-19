//
//  AccountRouter.swift
//  moloo
//
//  Created by Rafi Mochamad Fahreza on 19/10/22.
//

import Foundation
import UIKit

class AccountRouter: AccountRouterProtocol, TabBarModuleProtocol {
    var tabIcon: UIImage = R.image.accountTabIcon()!
    var tabName: String = "Akun"
    weak var viewController: UIViewController?
    
    func assembleModule() -> UIViewController {
        let view = R.storyboard.accountStoryboard.accountViewController()!
        return view
    }
    
}
