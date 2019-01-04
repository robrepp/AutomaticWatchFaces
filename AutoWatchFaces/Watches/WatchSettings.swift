//
//  WatchSettings.swift
//  WatchFace Extension
//
//  Created by Sylvain Guillier on 01/01/2019.
//  Copyright © 2019 Sylvain Guillier. All rights reserved.
//

import Foundation
import UIKit

struct WatchSettings {
    let name : String!
    let dial : String!
    let secondHand : String!
    let minuteHand : String!
    let hourHand : String!
    let date : Bool!
    var minuteHandScale : Double!
    var secondHandScale : Double!
    var hourHandScale : Double!
    var datePositionX : Double!
    var datePositionY : Double!
    var dateColor: UIColor
    
    init(name:String,dial:String,secondHand:String,minuteHand:String,hourHand:String,date:Bool,minuteHandScale:Double?=0.1,secondHandScale:Double?=0.44,hourHandScale:Double?=0.12,datePositionX:Double?=65.0,datePositionY:Double?=0.2, dateColor:UIColor = .black) {
        self.name = name
        self.dial = dial
        self.secondHand = secondHand
        self.minuteHand = minuteHand
        self.hourHand = hourHand
        self.date = date
        self.minuteHandScale = minuteHandScale
        self.hourHandScale = hourHandScale
        self.secondHandScale = secondHandScale
        self.datePositionX = datePositionX
        self.datePositionY = datePositionY
        self.dateColor = dateColor
    }
}
