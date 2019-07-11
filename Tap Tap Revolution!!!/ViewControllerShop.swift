//
//  ViewControllerShop.swift
//  Tap Tap Revolution!!!
//
//  Created by Student on 7/8/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit
import AVFoundation

class ViewControllerShop: UIViewController {
    
    @IBOutlet weak var LabelMoney: UILabel!
    @IBOutlet weak var MoneyCount: UILabel!
    @IBOutlet weak var Cost2: UIButton!
    @IBOutlet weak var Cost3: UIButton!
    @IBOutlet weak var Cost4: UIButton!
    @IBOutlet weak var Title2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MoneyCount.text = String(money) + "$"
    }
    @IBOutlet weak var Cost1: UIButton!
    override func viewWillAppear(_ animated: Bool) {
        if background == UIColor.white{
            view.backgroundColor = UIColor.white
            LabelMoney.textColor = UIColor.black
            MoneyCount.textColor = UIColor.black
            Title2.textColor = UIColor.black
        } else if background == UIColor.black{
            view.backgroundColor = UIColor.black
            LabelMoney.textColor = UIColor.white
            MoneyCount.textColor = UIColor.white
            Title2.textColor = UIColor.white
        } else{
            view.backgroundColor = UIColor.yellow
            LabelMoney.textColor = UIColor.black
            MoneyCount.textColor = UIColor.black
            Title2.textColor = UIColor.black
        }
        if ProductsBought == 2{
            Cost1.isHidden = true
        }else if ProductsBought == 3{
            Cost1.isHidden = true
            Cost2.isHidden = true
        }else if ProductsBought == 4{
            Cost1.isHidden = true
            Cost2.isHidden = true
            Cost3.isHidden = true
        }else if ProductsBought == 5{
            Cost1.isHidden = true
            Cost2.isHidden = true
            Cost3.isHidden = true
            Cost4.isHidden = true
        }
    }
    @IBAction func Buy(_ sender: Any) {
        if moneyMultiplier < 2{
            if money >= 200{
                money -= 200
                ProductsBought = 2
                moneyMultiplier = 2
                MoneyCount.text = String(money) + "$"
                Cost1.isHidden = true
            }
        }
        UserDefaults.standard.set(money, forKey: "\(user)")
        UserDefaults.standard.set(moneyMultiplier, forKey: "\(user)_multiplier")
        UserDefaults.standard.set(ProductsBought, forKey: "\(user)_Bought")
        if sound == true{
            if let url = Bundle.main.url(forResource: "Cha_Ching_Register-Muska666-173262285", withExtension: "wav") {
                soundEffects = try? AVAudioPlayer(contentsOf: url)
                soundEffects?.play()
            }
        }
    }
    @IBAction func Buy2(_ sender: Any) {
        if moneyMultiplier == 2{
            if money >= 1000{
                money -= 1000
                ProductsBought = 3
                moneyMultiplier = 3
                MoneyCount.text = String(money) + "$"
                Cost2.isHidden = true
            }
        }
        if sound == true{
            if let url = Bundle.main.url(forResource: "Cha_Ching_Register-Muska666-173262285", withExtension: "wav") {
                soundEffects = try? AVAudioPlayer(contentsOf: url)
                soundEffects?.play()
            }
        }
            
        UserDefaults.standard.set(money, forKey: "\(user)")
        UserDefaults.standard.set(moneyMultiplier, forKey: "\(user)_multiplier")
        UserDefaults.standard.set(ProductsBought, forKey: "\(user)_Bought")
    }
    @IBAction func Buy3(_ sender: Any) {
        if moneyMultiplier == 3{
            if money >= 5000{
                money -= 5000
                ProductsBought = 4
                moneyMultiplier = 6
                MoneyCount.text = String(money) + "$"
                Cost3.isHidden = true
            }
            
        }
        UserDefaults.standard.set(money, forKey: "\(user)")
        UserDefaults.standard.set(moneyMultiplier, forKey: "\(user)_multiplier")
        UserDefaults.standard.set(ProductsBought, forKey: "\(user)_Bought")
        if sound == true{
            if let url = Bundle.main.url(forResource: "Cha_Ching_Register-Muska666-173262285", withExtension: "wav") {
                soundEffects = try? AVAudioPlayer(contentsOf: url)
                soundEffects?.play()
            }
        }
    }
    @IBAction func Buy4(_ sender: Any) {
        if moneyMultiplier == 6{
            if money >= 12000{
                money -= 12000
                ProductsBought = 5
                moneyMultiplier = 20
                MoneyCount.text = String(money) + "$"
                Cost4.isHidden = true
            }
        }
        UserDefaults.standard.set(money, forKey: "\(user)")
        UserDefaults.standard.set(moneyMultiplier, forKey: "\(user)_multiplier")
        UserDefaults.standard.set(ProductsBought, forKey: "\(user)_Bought")
        if sound == true{
            if let url = Bundle.main.url(forResource: "Cha_Ching_Register-Muska666-173262285", withExtension: "wav") {
                soundEffects = try? AVAudioPlayer(contentsOf: url)
                soundEffects?.play()
            }
        }
    }
}
    

