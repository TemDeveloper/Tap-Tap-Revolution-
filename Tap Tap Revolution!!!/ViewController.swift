//
//  ViewController.swift
//  Tap Tap Revolution!!!
//
//  Created by Student on 7/6/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit
import AVFoundation

var name = ""
var background: UIColor = UIColor.white
var money = 0
var moneyMultiplier  = 1
var sound = true
var ProductsBought = 1

var player: AVAudioPlayer?

class ViewController: UIViewController {

    @IBOutlet weak var LabelTitle: UITextView!
    @IBOutlet weak var LabelPlay: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = Bundle.main.url(forResource: "2018-10-06_-_Silly_Chicken_-_David_Fesliyan", withExtension: "mp3") {
            player = try? AVAudioPlayer(contentsOf: url)
            player?.play()
            player?.numberOfLoops = -1
        } 
        
        
        
        if let moneyStored = UserDefaults.standard.string(forKey: "\(user)") {
            money = Int(moneyStored) ?? 0
        }
        if let multiplier = UserDefaults.standard.string(forKey: "\(user)_multiplier"){
            moneyMultiplier = Int(multiplier) ?? 0
        }
        if let produicts = UserDefaults.standard.string(forKey: "\(user)_Bought"){
            ProductsBought = Int(produicts) ?? 0
        }
        if let doublee = UserDefaults.standard.string(forKey: "\(user)_double"){
            doubleeeee = Int(doublee) ?? 0
        }
        if let castinmoney = UserDefaults.standard.string(forKey: "\(user)_CostinMoney"){
            costinmoney = Int(castinmoney) ?? 0
        }
        timer = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(self.tick), userInfo: nil, repeats: true)

    }
    @objc func tick() {
        money = money + doubleeeee
    }

    override func viewWillAppear(_ animated: Bool) {
        if background == UIColor.white{
            view.backgroundColor = UIColor.white
            LabelTitle.textColor = UIColor.black
            LabelPlay.titleLabel?.textColor = UIColor.black
            
        } else if background == UIColor.black{
            view.backgroundColor = UIColor.black
            LabelTitle.textColor = UIColor.white
            LabelPlay.titleLabel?.textColor = UIColor.white
        } else{
            view.backgroundColor = UIColor.yellow
            LabelTitle.textColor = UIColor.black
            LabelPlay.titleLabel?.textColor = UIColor.black
        }
    }

    
}

