//
//  AnimalCustomCollectionViewCell.swift
//  AppAnimais
//
//  Created by Gui Feitosa on 07/09/21.
//

import UIKit

class AnimalCustomCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
   
    
    
    public func setup(with animal: Especie) {
        
        myImage.image = UIImage(named: animal.nameImage)
        myLabel.text = animal.titleAnimal
        
    }
    
}



