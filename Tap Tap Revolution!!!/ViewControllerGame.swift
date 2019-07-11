//
//  ViewControllerGame.swift
//  Tap Tap Revolution!!!
//
//  Created by Student on 7/8/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit
import AVFoundation

class ViewControllerGame: UIViewController {
    
    @IBOutlet weak var LabelMoney: UILabel!
    @IBOutlet weak var MoneyCount: UILabel!
    @IBOutlet weak var Rotated: UILabel!
    @IBOutlet weak var Rotated1: UILabel!
    @IBOutlet weak var Rotated2: UILabel!
    @IBOutlet weak var Rotated3: UILabel!
    @IBOutlet weak var Rotated4: UILabel!
    @IBOutlet weak var Rotated5: UILabel!
    @IBOutlet weak var Rotated6: UILabel!
    @IBOutlet weak var Rotated7: UILabel!
    @IBOutlet weak var Rotated8: UILabel!
    @IBOutlet weak var ImageFactory: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        Rotated.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 5)
        Rotated1.transform = CGAffineTransform(rotationAngle: CGFloat.pi / -3)
        Rotated2.transform = CGAffineTransform(rotationAngle: CGFloat.pi / -5)
        Rotated3.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        Rotated4.transform = CGAffineTransform(rotationAngle: CGFloat.pi / -2)
        Rotated5.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 3)
        Rotated6.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 7)
        Rotated7.transform = CGAffineTransform(rotationAngle: CGFloat.pi / -8)
        Rotated8.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 10)
        timer1 = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(self.tick2), userInfo: nil, repeats: true)
    }
    @objc func tick2() {
        LabelMoney.text = String(money) + "$"
    }
    override func viewWillAppear(_ animated: Bool) {
        if background == UIColor.white{
            view.backgroundColor = UIColor.white
            LabelMoney.textColor = UIColor.black
            MoneyCount.textColor = UIColor.black
            Rotated.textColor = UIColor.black
            Rotated1.textColor = UIColor.black
            Rotated2.textColor = UIColor.black
            Rotated3.textColor = UIColor.black
            Rotated4.textColor = UIColor.black
            Rotated5.textColor = UIColor.black
            Rotated6.textColor = UIColor.black
            Rotated7.textColor = UIColor.black
            Rotated8.textColor = UIColor.black
        } else if background == UIColor.black{
            view.backgroundColor = UIColor.black
            LabelMoney.textColor = UIColor.white
            MoneyCount.textColor = UIColor.white
            Rotated.textColor = UIColor.white
            Rotated1.textColor = UIColor.white
            Rotated2.textColor = UIColor.white
            Rotated3.textColor = UIColor.white
            Rotated4.textColor = UIColor.white
            Rotated5.textColor = UIColor.white
            Rotated6.textColor = UIColor.white
            Rotated7.textColor = UIColor.white
            Rotated8.textColor = UIColor.white
        } else{
            view.backgroundColor = UIColor.yellow
            LabelMoney.textColor = UIColor.black
            MoneyCount.textColor = UIColor.black
            Rotated.textColor = UIColor.black
            Rotated1.textColor = UIColor.black
            Rotated2.textColor = UIColor.black
            Rotated3.textColor = UIColor.black
            Rotated4.textColor = UIColor.black
            Rotated5.textColor = UIColor.black
            Rotated6.textColor = UIColor.black
            Rotated7.textColor = UIColor.black
            Rotated8.textColor = UIColor.black
        }
        if ProductsBought == 1{
            ImageFactory.setImage(UIImage(named: "LumberMill"), for: .normal)
        }else if ProductsBought == 2{
            ImageFactory.setImage(UIImage(named: "papermaking"), for: .normal)
        }else if ProductsBought == 3{
            ImageFactory.setImage(UIImage(named:"CoalFactory"), for: .normal)
        }else if ProductsBought == 4{
            ImageFactory.setImage(UIImage(named:"OilFactory"), for: .normal)
        }else if ProductsBought == 5{
            ImageFactory.setImage(UIImage(named: "NuclearStation"), for: .normal)
        }
        LabelMoney.text = String(money) + "$"
    }

    @IBAction func TapTApClick(_ sender: Any) {
        money += moneyMultiplier
        LabelMoney.text = String(Int(money)) + "$"
        if sound == true{
            if let url = Bundle.main.url(forResource: "Click2-Sebastian-759472264", withExtension: "wav") {
                soundEffects = try? AVAudioPlayer(contentsOf: url)
                soundEffects?.play()
            }
        }
        
        UserDefaults.standard.set(money, forKey: "\(user)")
        

        
    }
}
