//
//  player.swift
//  player1=player2
//
//  Created by Yeswanth varma Kanumuri on 12/23/15.
//  Copyright © 2015 Yeswanth varma Kanumuri. All rights reserved.
//

import Foundation


class Character {


 private var _hp = 100
 private var _atackpower = 15
    private var _name : String = "player"
    
    var hp:Int {
        
        get {
            
            return _hp
            
        }
    }
    var attackPWR :Int {
        get{
            return _atackpower
        }
        
    }

    var name : String {
    
        get {
        
        return _name
        
        }
    
    
    }

    
    var isAlive : Bool {
    
        if hp <= 0 {
        
        return false
            
        } else {
        
        return true
        }
    
    }
    
    
    
    init (name : String ,startingHP : Int , attackPower : Int) {
        
        self._hp = startingHP
        self._atackpower = attackPower
        self._name = name
        
    }
    
    func attackAttempt (attackPower :Int) -> Bool {
        
        self._hp -= attackPower
        return true
        
    }
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}