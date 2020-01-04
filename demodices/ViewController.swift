//
//  ViewController.swift
//  demodices
//
//  Created by Daniel on 2019/12/18.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

import AVFoundation

class ViewController: UIViewController {

    var player:AVPlayer?
    @IBOutlet var diceButtons: [UIButton]!
    @IBOutlet weak var diceNumberLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        diceNumberLabel.text = "0"
    }

    @IBAction func startdice(_ sender: UIButton) {
        
        if let url = Bundle.main.url(forResource: "music", withExtension: "wav"){
            player = AVPlayer(url: url)
            player?.play()
        }
        var sum = 0
        for dice in diceButtons{
            let number = Int.random(in: 1...6)
            let image = UIImage(named: "\(number)")
            dice.setBackgroundImage(image, for: .normal)
            sum += number
        }
        diceNumberLabel.text = "\(sum)"
    }
     
}

