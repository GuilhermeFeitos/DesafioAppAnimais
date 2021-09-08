//
//  SegundaViewController.swift
//  AppAnimais
//
//  Created by Gui Feitosa on 07/09/21.
//

import UIKit

class SegundaViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    
    private let animal: [Especie] =
        [.init(nameImage: "picapau.png", titleAnimal: "Pica Pau", tipoAnimal: "Passaro"),
         .init(nameImage: "bemtevi.jpg", titleAnimal: "Bem-te-vi", tipoAnimal: "Passaro"),
         .init(nameImage: "garca.jpg", titleAnimal: "Garça", tipoAnimal: "Passaro"),
         .init(nameImage: "flamingo.jpg", titleAnimal: "Flamingo", tipoAnimal: "Passaro"),
         .init(nameImage: "beijaflor.jpg", titleAnimal: "Beija Flor", tipoAnimal: "Passaro"),
         .init(nameImage: "pelicano.jpg", titleAnimal: "Pelicano", tipoAnimal: "Passaro"),
         .init(nameImage: "tucano.jpg", titleAnimal: "Tucano", tipoAnimal: "Passaro"),
         .init(nameImage: "sabia.jpg", titleAnimal: "Sabiá", tipoAnimal: "Passaro"),
         .init(nameImage: "joaodebarro.jpg", titleAnimal: "João de Barro", tipoAnimal: "Passaro"),
         .init(nameImage: "queroquero.jpg", titleAnimal: "Quero-Quero", tipoAnimal: "Passaro")]
    
    var tituloTela: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = tituloTela
        setupCollectionView()
    }
}


extension SegundaViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    private func setupCollectionView() {
        
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return animal.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
       if let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "AnimalCustomCollectionViewCell", for: indexPath) as? AnimalCustomCollectionViewCell {
            
            cell.setup(with: animal[indexPath.row])
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    
    
}
