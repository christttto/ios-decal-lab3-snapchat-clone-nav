//
//  ImagePickerController.swift
//  Snapchat Clone
//
//  Created by Akilesh Bapu on 2/27/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import UIKit

class ImagePickerController: UIViewController {

    @IBOutlet var imageCollectionView: UICollectionView!
    
    var myButton: UIButton = {
        let button = UIButton()
        button.backg
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageCollectionView.dataSource = self
    }
}

extension ImagePickerController: UICollectionViewDataSource {
    
    var cellImages = [UIImage(named: "dog"), UIImage(named: "dog2")]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // implementation hidden
    }
}
