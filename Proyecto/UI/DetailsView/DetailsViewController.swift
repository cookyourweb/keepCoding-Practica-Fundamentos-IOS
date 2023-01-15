//
//  DetailsViewController.swift
//  Proyecto
//
//  Created by vero on 19/12/22.
//

import UIKit

class DetailsViewController: BaseViewController {

    @IBOutlet weak var heroeImageView: UIImageView!
    @IBOutlet weak var heroeNameLabel: UILabel!
    @IBOutlet weak var heroeDescLabel: UILabel!
    @IBOutlet weak var transformationsButton: UIButton!
    
    
    var heroe: Heroe!
    var transformations: [Transformation] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
//ponemos a cero la visibilidad del boton. Por defecto no aparece hasta obtener los datos de la API
        transformationsButton.alpha = 0
        transformationsButton.layer.cornerRadius = 15
        title = heroe.name
        
        heroeImageView.setImage(url: heroe.photo)
        heroeNameLabel.text = heroe.name
        heroeDescLabel.text = heroe.description
//        token para llamar a la API
        let token = LocalDataLayer.shared.getToken()
//        Las transformaciones para ocultar o no el botón
        NetworkLayer
            .shared
            .fetchTransformations(token: token, heroeId: heroe.id) { [weak self] allTrans, error in
//                nos aseguramos que la vista existe
                guard let self = self else { return }
                
                if let allTrans = allTrans {
//                    los bloques o clousures. Todo lo que son propiedades del boton, necesitan un self.
                    self.transformations = allTrans
                    
                    print("trans count: ", allTrans.count)
                    
                    if !self.transformations.isEmpty {
                        DispatchQueue.main.async {
                            self.transformationsButton.alpha = 1
                        }
                    }
                    
                } else {
                    print("Error fetching transformations: ", error?.localizedDescription ?? "")
                }
            }
    }


    @IBAction func transformationsButtonTapped(_ sender: UIButton) {
        let transView = TransformationsViewController()
        transView.transformations = self.transformations
        
        navigationController?.pushViewController(transView, animated: true)
    }
    

}
