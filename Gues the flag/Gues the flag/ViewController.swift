//
//  ViewController.swift
//  Gues the flag
//
//  Created by Eugene Berezin on 9/25/19.
//  Copyright © 2019 Eugene Berezin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var button1: UIButton!
    
    @IBOutlet var button2: UIButton!
    
    @IBOutlet var button3: UIButton!
    
    
    
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        buttonConfig()
        
        askQuestion()
        
    }
    
    func buttonConfig() {
        let buttons = [self.button1, self.button2, self.button3]
        buttons.forEach { $0?.layer.borderWidth = 1}
        buttons.forEach { $0?.layer.borderColor = UIColor.lightGray.cgColor}
        buttons.forEach { $0?.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)}
    }
    
    func askQuestion() {
        
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        title = countries[correctAnswer].uppercased()
        
    }
    
    @objc func buttonTapped() {
        
    }
    
    


}

