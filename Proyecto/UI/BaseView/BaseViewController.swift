//
//  BaseViewController.swift
//  Proyecto
//
//  Created by vero on 22/12/22.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self,
                                               selector: #selector(logout),
                                               name: Notification.Name("logout"),
                                               object: nil)
    }
    
    @objc func logout() {
        // delete UserDefaults
        // call API
        // navigation to Login
    }
    

    
}
