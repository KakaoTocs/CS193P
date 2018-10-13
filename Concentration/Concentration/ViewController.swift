//
//  ViewController.swift
//  Concentration
//
//  Created by Jinu Kim on 13/10/2018.
//  Copyright © 2018 Jinu Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    @IBOutlet var cardButtons: [UIButton]!
    var emojichoices = ["🎃", "👻", "🎃", "👻"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.lastIndex(of: sender) {
            flipCard(withEmoji: emojichoices[cardNumber], on: sender)
        } else {
            print("choosen card was not in cardButtons")
        }
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        print("flipCard(withEmoji: \(emoji))")
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
}

