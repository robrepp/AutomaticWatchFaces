//
//  WatchScene.swift
//  WatchFace Extension
//
//  Created by Sylvain Guillier on 27/12/2018.
//  Copyright © 2018 Sylvain Guillier. All rights reserved.
//

import SpriteKit
import WatchKit

class WatchScene: SKScene {
    var dialBackground : SKSpriteNode = SKSpriteNode()
    var secondHand : SKSpriteNode = SKSpriteNode()
    var minuteHand : SKSpriteNode = SKSpriteNode()
    var hourHand : SKSpriteNode = SKSpriteNode()
    var dateLabel : SKLabelNode = SKLabelNode()
    var textures : [String:SKTexture]?
    
    
    override func sceneDidLoad() {
        
        if let secHand : SKSpriteNode = self.childNode(withName: "SecondHand") as? SKSpriteNode{
            secondHand = secHand
        }
        
        if let minHand : SKSpriteNode = self.childNode(withName: "MinuteHand") as? SKSpriteNode{
            minuteHand  = minHand
        }
        
        if let hrHand : SKSpriteNode = self.childNode(withName: "HourHand") as? SKSpriteNode{
            hourHand = hrHand
        }
        
        if let label : SKLabelNode = self.childNode(withName: "DateLabel") as? SKLabelNode{
            dateLabel = label
        }
        
        if let background : SKSpriteNode = self.childNode(withName: "Background") as? SKSpriteNode{
            dialBackground = background
        }
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        let date = Date()
        let calendar = Calendar.current
        let hour = CGFloat(calendar.component(.hour, from: date))
        let minutes = CGFloat(calendar.component(.minute, from: date))
        let seconds = CGFloat(calendar.component(.second, from: date))
        let nanoseconds = CGFloat(calendar.component(.nanosecond, from: date))
        secondHand.zRotation = -1 * degreesToRadians((seconds + nanoseconds/pow(10,9))*6)
        minuteHand.zRotation = -1 * degreesToRadians((minutes+(seconds/60))*6)
        hourHand.zRotation = -1 * degreesToRadians(hour*30 + minutes/2)
        dateLabel.text = String(calendar.component(.day, from: date))
        
        
    }
    
    func degreesToRadians(_ number:CGFloat) -> CGFloat{
        return number * .pi/180
    }
    
    
}
