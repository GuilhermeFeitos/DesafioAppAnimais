//
//  ViewController.swift
//  AppAnimais
//
//  Created by Gui Feitosa on 07/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    
    private let animals: [Animal] =
        [.init(nameImage: "peixes.jpg", titleAnimal: "Peixes"),
         .init(nameImage: "anfibios.jpg", titleAnimal: "Anfíbios"),
         .init(nameImage: "repteis.jpg", titleAnimal: "Répteis"),
         .init(nameImage: "aves.jpg", titleAnimal: "Aves"),
         .init(nameImage: "mamiferos.jpg", titleAnimal: "Mamíferos")]
    
        

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()

    }


}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
        
    private func setupTableView(){
        
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.tableFooterView = .init(frame: .zero)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            
        return 60
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return animals.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCustomTableViewCell", for: indexPath) as? AnimalCustomTableViewCell {
            
            cell.setup(with: animals[indexPath.row])
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        let classeSelecionada = animals[indexPath.row].titleAnimal
        print(classeSelecionada)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "segundaView" {
           
            if let segundaViewController = segue.destination as? SegundaViewController {
                
                if let cell = sender as? AnimalCustomTableViewCell {
                    
                    
                    segundaViewController.tituloTela = cell.myLabel.text

                }
                
                
            }
        
       
        }
        
    }
    
}

