//
//  ViewControllerInstructions.swift
//  Tap Tap Revolution!!!
//
//  Created by Student on 7/6/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class ViewControllerInstructions: UIViewController {

    @IBOutlet weak var Description: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewWillAppear(_ animated: Bool) {
        if background == UIColor.white{
            view.backgroundColor = UIColor.white
            Description.textColor = UIColor.black
        } else if background == UIColor.black{
            view.backgroundColor = UIColor.black
            Description.textColor = UIColor.white
        } else{
            view.backgroundColor = UIColor.yellow
            Description.textColor = UIColor.black
        }
    }
    @IBAction func buttonInstructions(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
}
