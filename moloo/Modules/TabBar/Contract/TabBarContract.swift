//
//  TabBarContract.swift
//  moloo
//
//  Created by Rafi Mochamad Fahreza on 04/10/22.
//

import Foundation
import UIKit

protocol TabBarModuleProtocol {
    var tabIcon: UIImage{get set}
    var tabName: String{get set}
    
    func assembleModule() -> UIViewController
}

protocol TabBarViewProtocol {
    
}

protocol TabBarRouterProtocol {
    
}
