//
//  AnimalCustomTableViewCell.swift
//  AppAnimais
//
//  Created by Gui Feitosa on 07/09/21.
//

import UIKit

class AnimalCustomTableViewCell: UITableViewCell {

    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    
    
    public func setup(with animal: Animal) {
        
        myImage.image = UIImage(named: animal.nameImage)
        myLabel.text = animal.title
        
    }

}
