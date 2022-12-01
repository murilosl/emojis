//
//  ListCollectionViewCell.swift
//  Emoji
//
//  Created by Murilo de Souza Lopes on 28/11/22.
//

import UIKit

class ListCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgCell: UIImageView!
    
    func setImage(image: String) {
        if let url = URL(string: image) {
            imgCell?.load(url: url)
        }
    }
    
    func downloadImage(image: String) -> UIImage {
        guard let url = URL(string: image) else { return defaultImage() }
    
        let data = try? Data(contentsOf: url)
        
        if let imageData = data {
            if let imageResult = UIImage(data: imageData) {
                return imageResult
            } else {
                return defaultImage()
            }
        }
        return defaultImage()
    }
    
    func defaultImage() -> UIImage {
        if let defaultImage = UIImage(named: "Snake") {
            return defaultImage
        }
        return UIImage()
    }
}
