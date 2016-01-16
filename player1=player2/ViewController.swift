//
//  ViewController.swift
//  player1=player2
//
//  Created by Yeswanth varma Kanumuri on 12/23/15.
//  Copyright © 2015 Yeswanth varma Kanumuri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playerTWOIMG: UIImageView!
    @IBOutlet weak var playerOneIMG: UIImageView!
    @IBOutlet weak var attackOneImg: UIButton!
    
    @IBOutlet weak var AttackTwoImg: UIButton!
    

    @IBOutlet weak var gameStatusLabel: UILabel!
    
    
    
    var ram :Character!
    var ravan :Character!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        ram = Character(name: "rama", startingHP: 100, attackPower: 15)
        ravan = Character(name: "ravana", startingHP: 100, attackPower: 13)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func PlayeOneAttack(sender: AnyObject) {
        
        AttackTwoImg.hidden = true
         NSTimer.scheduledTimerWithTimeInterval(3, target: self, selector: "attackButtonAppear", userInfo: nil, repeats: false)
        
        if ravan.attackAttempt(ram.attackPWR){
        
        gameStatusLabel.text = "ravan was attcked"
        
        } else {
        
         gameStatusLabel.text = "ravan was not attcked"
        
        }
        
        
        
        if !ravan.isAlive {
            
            
           gameStatusLabel.text = "ravan is killed "
           playerTWOIMG.hidden = true
              NSTimer.scheduledTimerWithTimeInterval(3, target: self, selector: "attackButtonAppear", userInfo: nil, repeats: false)
            
        }
        
        
    }
 
    
    @IBAction func PlayerTwoAttack(sender: AnyObject) {
        
        
        
       attackOneImg.hidden = true
        NSTimer.scheduledTimerWithTimeInterval(3, target: self, selector: "attackButtonAppear", userInfo: nil, repeats: false)
        
        if ram.attackAttempt(ravan.attackPWR){
        
        gameStatusLabel.text = "ram was attcked"
        
        
        }else
        {
        
              gameStatusLabel.text = "ram was  not attcked"
        
        
        }
        
        if !ram.isAlive {
            
            
            gameStatusLabel.text = "Ram is Defeated "
            playerOneIMG.hidden = true
               NSTimer.scheduledTimerWithTimeInterval(3, target: self, selector: "attackButtonAppear", userInfo: nil, repeats: false)

    }
    
    
    }

    
    func attackButtonAppear (){
    
    
    
        if AttackTwoImg.hidden {
        
        AttackTwoImg.hidden = false
        
        } else {
        
        attackOneImg.hidden = false
        
        }
    
        if playerTWOIMG.hidden {
        
        
        playerTWOIMG.hidden = false
            
        
        } else {
        
        playerOneIMG.hidden = false
            
        
        }
    
    
    
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

