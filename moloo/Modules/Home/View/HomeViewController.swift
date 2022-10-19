//
//  HomeViewController.swift
//  moloo
//
//  Created by Rafi Mochamad Fahreza on 19/10/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var descriptionCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        self.setupNavigation()
    }
    
    func setupNavigation() {
        self.title = "Beranda"
        self.navigationController?.navigationBar.tintColor = .black
    }
    
    func setupView() {
        descriptionCollectionView.delegate = self
        descriptionCollectionView.dataSource = self
    }
    
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: R.reuseIdentifier.briefCell.identifier, for: indexPath)
        return cell
    }
    
    
}
