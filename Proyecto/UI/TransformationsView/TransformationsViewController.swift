//
//  TransformationsViewController.swift
//  Proyecto
//
//  Created by vero on 22/12/22.
//

import UIKit
//tenemos que importar en la clase UITableViewDelegate, UITableViewDataSource Los dos protocolos de la tableview
class TransformationsViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
//  var transformations: [Transformation] = [] lo sustituimos ya que si no tenemos array lal vista no debería de cargar
    
    var transformations: [Transformation]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        navigationItem.title = "Transformations"
        
        let xib = UINib(nibName: "TableCell", bundle: nil)
        tableView.register(xib, forCellReuseIdentifier: "customTableCell")
    }

    
    // Delegate & DataSource methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return transformations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customTableCell", for: indexPath) as! TableCell
        
        let heroe = transformations[indexPath.row]
        
        cell.iconImageView.setImage(url: heroe.photo)
        cell.titleLabel.text = heroe.name
        cell.descLabel.text = heroe.description
        cell.accessoryType = .disclosureIndicator
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }

}
