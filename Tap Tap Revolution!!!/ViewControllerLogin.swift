//
//  ViewControllerLogin.swift
//  Tap Tap Revolution!!!
//
//  Created by Student on 7/9/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit
var user = ""
class ViewControllerLogin: UIViewController {

    @IBOutlet weak var Username: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    UserDefaults.standard.removePersistentDomain(forName: Bundle.main.bundleIdentifier!)
        UserDefaults.standard.synchronize()
    }
    
    @IBAction func Login(_ sender: Any) {
        if Username.text != ""{
            user = Username.text!
            performSegue(withIdentifier: "Segue", sender: self)
        }else{
            let alert = UIAlertController(title: "Hey there!", message: "You must type something in?", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Back", style: .default, handler: nil))
            self.present(alert, animated: false)
            
        }
        name = Username.text!
    }

}
