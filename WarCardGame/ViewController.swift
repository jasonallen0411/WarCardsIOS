//
//  ViewController.swift
//  WarCardGame
//
//  Created by Jason Allen on 5/30/19.
//  Copyright © 2019 Jason Allen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
        
        
        // Randomize some numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
       
        // Update the image views
        leftImageView.image = UIImage(named:"card\(leftNumber)")
        rightImageView.image = UIImage(named:"card\(rightNumber)")
        
        // Compare the random numbers
        if leftNumber > rightNumber {
            
            // Left Side Wins
            leftScore += 1
            
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber {
            
            //Right side wins
            
            rightScore += 1
            
            rightScoreLabel.text = String(rightScore)
        }
        
        else {
            // Tie
        }
        if leftScore >= 10 {
            
            // Left Side Wins
            
            leftScoreLabel.textColor = UIColor.red
            leftScoreLabel.text = "You Win!"
            
        }
        if rightScore >= 10 {
            
            // Right Side Wins
            
            rightScoreLabel.textColor = UIColor.red
            rightScoreLabel.text = "You Win!"
        }
        
    
    }
    


}

