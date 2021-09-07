//
//  ViewController.swift
//  AppAnimais
//
//  Created by Gui Feitosa on 07/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    
    private let animals: [Animal] = [.init(nameImage: "peixes.jpg", title: "Peixes"),
                                     .init(nameImage: "anfibios.jpg", title: "Anfíbios"),
                                     .init(nameImage: "repteis.jpg", title: "Répteis"),
                                     .init(nameImage: "aves.jpg", title: "Aves"),
                                     .init(nameImage: "mamiferos.jpg", title: "Mamíferos")   ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()

    }


}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    private func setupTableView(){
        
        myTableView.delegate = self
        myTableView.dataSource = self
       // myTableView.backgroundColor = UIColor(red: 124/255, green: 116/255, blue: 0/255, alpha: 1.0)
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
        
        let classeSelecionada = animals[indexPath.row].title
        print(classeSelecionada)
        
    }
    
    
}
