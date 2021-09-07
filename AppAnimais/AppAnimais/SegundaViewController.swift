//
//  SegundaViewController.swift
//  AppAnimais
//
//  Created by Gui Feitosa on 07/09/21.
//

import UIKit

class SegundaViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var tituloTela: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = tituloTela
    }
}
