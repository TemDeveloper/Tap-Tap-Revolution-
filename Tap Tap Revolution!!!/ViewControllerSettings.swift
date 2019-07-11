//
//  ViewControllerSettings.swift
//  Tap Tap Revolution!!!
//
//  Created by Student on 7/6/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit
import AVFoundation


class ViewControllerSettings: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var TheStepper: UIStepper!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var Switchhh: UISwitch!
    @IBOutlet weak var SoundOrNoSound: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        if sound == true{
            Switchhh.isOn = true
        }else if sound == false{
            Switchhh.isOn = false
        }
        if background == UIColor.white{
            view.backgroundColor = UIColor.white
            label.textColor = UIColor.black
            label2.textColor = UIColor.black
            SoundOrNoSound.textColor = UIColor.black
        }else if background == UIColor.black{
            view.backgroundColor = UIColor.black
            label.textColor = UIColor.white
            label2.textColor = UIColor.white
            SoundOrNoSound.textColor = UIColor.white
        }else if background == UIColor.yellow{
            view.backgroundColor = UIColor.yellow
            label.textColor = UIColor.black
            label2.textColor = UIColor.black
            SoundOrNoSound.textColor = UIColor.black
        }
    }
    
    @IBAction func Stepper(_ sender: Any) {
        if TheStepper.value == Double(0){
            view.backgroundColor = UIColor.white
            label.textColor = UIColor.black
            label2.textColor = UIColor.black
            SoundOrNoSound.textColor = UIColor.black
        } else if TheStepper.value == Double(1){
            view.backgroundColor = UIColor.black
            label.textColor = UIColor.white
            label2.textColor = UIColor.white
            SoundOrNoSound.textColor = UIColor.white
        } else if TheStepper.value == Double(2){
            view.backgroundColor = UIColor.yellow
            label.textColor = UIColor.black
            label2.textColor = UIColor.black
            SoundOrNoSound.textColor = UIColor.black
        }
    }
    
    @IBAction func buttonSettings(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        if view.backgroundColor == UIColor.white{
            background = UIColor.white
        }else if view.backgroundColor == UIColor.black{
            background = UIColor.black
        }else if view.backgroundColor
            == UIColor.yellow{
            background = UIColor.yellow
        }
    }
    @IBAction func Switchh(_ sender: Any) {
        if Switchhh.isOn == true{
            sound = true
            if let url = Bundle.main.url(forResource: "2018-10-06_-_Silly_Chicken_-_David_Fesliyan", withExtension: "mp3") {
                player = try? AVAudioPlayer(contentsOf: url)
                player?.play()
                player?.numberOfLoops = -1
            }
        } else{
            sound = false
            player?.stop()
        }
            
    }
}
