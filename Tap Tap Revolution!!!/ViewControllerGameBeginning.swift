//
//  ViewControllerGameBeginning.swift
//  Tap Tap Revolution!!!
//
//  Created by Student on 7/6/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class ViewControllerGameBeginning: UIViewController {
    
    @IBOutlet weak var labelName: UITextField!
    @IBOutlet weak var textBefore: UILabel!
    @IBOutlet weak var textIndustrial: UILabel!
    @IBOutlet weak var textRevolution: UILabel!
    @IBOutlet weak var textSpeech: UITextView!
    @IBOutlet weak var textLumberMill: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = name
    }
    override func viewWillAppear(_ animated: Bool) {
        if background == UIColor.white{
            view.backgroundColor = UIColor.white
            textBefore.textColor = UIColor.black
            textIndustrial.textColor = UIColor.black
            textRevolution.textColor = UIColor.black
            textSpeech.textColor = UIColor.black
            textLumberMill.textColor = UIColor.black
        } else if background == UIColor.black{
            view.backgroundColor = UIColor.black
            textBefore.textColor = UIColor.white
            textIndustrial.textColor = UIColor.white
            textRevolution.textColor = UIColor.white
            textSpeech.textColor = UIColor.white
            textLumberMill.textColor = UIColor.white
        } else{
            view.backgroundColor = UIColor.yellow
            textBefore.textColor = UIColor.black
            textIndustrial.textColor = UIColor.black
            textRevolution.textColor = UIColor.black
            textSpeech.textColor = UIColor.black
            textLumberMill.textColor = UIColor.black
        }
    }
    
    
}
