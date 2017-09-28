//
//  ImagePickerController.swift
//  Snapchat Clone
//
//  Created by Akilesh Bapu on 2/27/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import UIKit

/// Grid of images - in a future assignment, you'll be replacing this view controller with a camera
class ImagePickerController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet var imageCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = UIColor(red: 0, green: 0.8196, blue: 0.9294, alpha: 1.0)
        navigationController?.navigationBar.tintColor = UIColor.white
        imageCollectionView.collectionViewLayout = ImageFlowLayout()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /// This method is called every time a image cell is tapped. You'll
    /// need to use pass the `image` parameter in some way to the
    /// ImagePreviewViewController
    ///
    /// - Parameter image: UIImage displayed in the selected cell
    func selectImage(_ image: UIImage) {
        // TODO: take this image and display it in a new view controller
    }
    
    /// TODO: override prepareForSegue to pass the selected image over to the next view
    
    
    
    /// DON'T MODIFY CODE HERE AND BELOW (we'll be going over this next lecture)!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return allImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pickImageCell", for: indexPath) as! ImageCollectionViewCell
        cell.image.image = allImages[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedCell = collectionView.cellForItem(at: indexPath) as! ImageCollectionViewCell
        selectImage(selectedCell.image.image!)
    }
}
