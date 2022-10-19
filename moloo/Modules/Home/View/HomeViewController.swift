//
//  HomeViewController.swift
//  moloo
//
//  Created by Rafi Mochamad Fahreza on 19/10/22.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavigation()
    }
    
    func setupNavigation() {
        self.title = "Beranda"
        self.navigationController?.navigationBar.tintColor = .black
    }
    
}
