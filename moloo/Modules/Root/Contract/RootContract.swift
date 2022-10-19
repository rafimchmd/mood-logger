//
//  RootContract.swift
//  moloo
//
//  Created by Rafi Mochamad Fahreza on 04/10/22.
//

import Foundation
import UIKit

protocol RootRouterProtocol {
    func setHomeView(in window: UIWindow)
    func setProfileView(in window: UIWindow)
    func setTabBarMenu(in window: UIWindow)
}
