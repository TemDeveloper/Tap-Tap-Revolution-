//
//  ViewControllerAutomatic.swift
//  Tap Tap Revolution!!!
//
//  Created by Student on 7/9/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit
import  AVFoundation

var timer = Timer()
var costinmoney = 40
var doubleeeee = 0
var timer1 = Timer()
var soundEffects: AVAudioPlayer?
class ViewControllerAutomatic: UIViewController {
    
    
    @IBOutlet weak var Cost1: UIButton!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var Description: UILabel!
    @IBOutlet weak var Description2: UILabel!
    @IBOutlet weak var Cons: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        
        Cost1.setTitle("\(costinmoney)", for: .normal)
        if background == UIColor.white{
        view.backgroundColor = UIColor.white
        Label.textColor = UIColor.black
        Description.textColor = UIColor.black
        Description2.textColor = UIColor.black
        } else if background == UIColor.black{
        view.backgroundColor = UIColor.black
        Label.textColor = UIColor.white
        Description.textColor = UIColor.white
        Description2.textColor = UIColor.white
        } else{
        view.backgroundColor = UIColor.yellow
        Label.textColor = UIColor.black
        Description.textColor = UIColor.black
          Description2.textColor = UIColor.black
      }
    }
    @objc func tick() {
        money = money + doubleeeee
    }
    @IBAction func ButtonAutomatic(_ sender: Any) {
        if money >= costinmoney && doubleeeee < 20{
            money -= costinmoney
            doubleeeee += 1
            costinmoney += 20
            Cost1.setTitle("\(costinmoney)", for: .normal)
            Cons.text = String(doubleeeee) + "/20"
        }
        if let url = Bundle.main.url(forResource: "Cha_Ching_Register-Muska666-173262285", withExtension: "wav") {
            soundEffects = try? AVAudioPlayer(contentsOf: url)
            soundEffects?.play()
        }
        if doubleeeee == 20{
            Cost1.isHidden = true
        }
        UserDefaults.standard.set(money, forKey: "\(user)")
        UserDefaults.standard.set(doubleeeee, forKey: "\(user)_double")
        UserDefaults.standard.set(costinmoney, forKey: "\(user)_CostinMoney")
        if sound == true{
            if let url = Bundle.main.url(forResource: "Cha_Ching_Register-Muska666-173262285", withExtension: "wav") {
                soundEffects = try? AVAudioPlayer(contentsOf: url)
                soundEffects?.play()
            }
        }
    }
    @IBAction func WinButton(_ sender: Any) {
        if money >= 20000{
            performSegue(withIdentifier: "Win", sender: nil)
            player?.stop()
            if let url = Bundle.main.url(forResource: "Heavenly Choir Sound Effect", withExtension: "mp3") {
                soundEffects = try? AVAudioPlayer(contentsOf: url)
                soundEffects?.play()
                
            }
        }
    }
}
