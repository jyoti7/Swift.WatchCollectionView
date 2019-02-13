//
//  ViewController.swift
//  CollectionViewWatchGallary
//
//  Created by Md. Abdur Rahman Jyoti on 13/2/19.
//  Copyright © 2019 Md. Abdur Rahman Jyoti. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    var arrLabel = ["Watch 1","Watch 2","Watch 3","Watch 4","Watch 5","Watch 6","Watch 7","Watch 8","Watch 9","Watch 10","Watch 11","Watch 12","Watch 13"]
    var arrImg = [#imageLiteral(resourceName: "Watch 11"),#imageLiteral(resourceName: "Watch 3"),#imageLiteral(resourceName: "Watch 7"),#imageLiteral(resourceName: "Watch 10"),#imageLiteral(resourceName: "Watch 4"),#imageLiteral(resourceName: "Watch 12"),#imageLiteral(resourceName: "Watch 6"),#imageLiteral(resourceName: "Watch 1"),#imageLiteral(resourceName: "Watch 8"),#imageLiteral(resourceName: "Watch 13"),#imageLiteral(resourceName: "Watch 5"),#imageLiteral(resourceName: "Watch 9"),#imageLiteral(resourceName: "Watch 2")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrLabel.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:WatchCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! WatchCollectionViewCell
        cell.nameLabel.text = arrLabel[indexPath.row]
        cell.imgView.image  = arrImg[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let imageDetails:DetailsViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        
        imageDetails.labelShow = arrLabel[indexPath.row]
        imageDetails.imageShow = arrImg[indexPath.row]
        self.navigationController?.pushViewController(imageDetails, animated: true)
        
        
    }
    
}

