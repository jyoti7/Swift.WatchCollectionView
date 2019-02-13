//
//  DetailsViewController.swift
//  CollectionViewWatchGallary
//
//  Created by Md. Abdur Rahman Jyoti on 13/2/19.
//  Copyright © 2019 Md. Abdur Rahman Jyoti. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var detailsImage: UIImageView!
    
    
    var labelShow:String!
    var imageShow:UIImage!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailsImage.image = imageShow
        detailsLabel.text = labelShow
        
    }
 

}
