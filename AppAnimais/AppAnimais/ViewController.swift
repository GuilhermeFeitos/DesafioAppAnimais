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
        myTableView.tableFooterView = .init(frame: .zero)
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return animals.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        
        return cell
    }
    
    
    
    
}
