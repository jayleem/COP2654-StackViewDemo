//
//  ViewController.swift
//  StackViewDemo
//
//  Created by Jayce Lee on 9/22/19.
//  Copyright © 2019 Jason Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var cupStackView: UIStackView!
    @IBAction func addCup(_ sender: Any) {
        let cupImage = UIImageView(image: UIImage(named: "RedCoffeeCup"))
        cupImage.contentMode = .scaleAspectFit
        
        UIView.animate(withDuration: 0.75, animations: {
            self.cupStackView.addArrangedSubview(cupImage)
            self.cupStackView.layoutIfNeeded()
        })
    }
    @IBAction func removeCup(_ sender: Any) {
        let lastAddedCup = self.cupStackView.arrangedSubviews.last
        
        if let cup = lastAddedCup {
            UIView.animate(withDuration: 0.25, animations: {
                self.cupStackView.removeArrangedSubview(cup)
                cup.removeFromSuperview()
                self.cupStackView.layoutIfNeeded()
            })
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

