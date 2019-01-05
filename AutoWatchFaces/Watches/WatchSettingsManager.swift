//
//  WatchSettingsManager.swift
//  WatchFace Extension
//
//  Created by Sylvain Guillier on 01/01/2019.
//  Copyright © 2019 Sylvain Guillier. All rights reserved.
//

import Foundation
class WatchSettingsManager {
    var watchSettingsList = [WatchSettings]()
    
    init() {
        watchSettingsList.append(WatchSettings(name: "Rolex Submariner", dial: "SubDial", secondHand: "SubSecond", minuteHand: "SubMinute", hourHand: "SubHour", date: false))
        
        watchSettingsList.append(WatchSettings(name: "Rolex Milgauss", dial: "MGDial", secondHand: "MGSecond", minuteHand: "MGMinute", hourHand: "MGHour", date: false,minuteHandScale: 0.08,secondHandScale:0.35))
        
        watchSettingsList.append(WatchSettings(name: "Rolex Explorer II", dial: "ExDial", secondHand: "ExSecond", minuteHand: "ExMinute", hourHand: "ExHour", date: true,secondHandScale:0.4))
        
        watchSettingsList.append(WatchSettings(name: "Omega Seamaster", dial: "SEMDial", secondHand: "SEMSecond", minuteHand: "SEMMinute", hourHand: "SEMHour", date: false,minuteHandScale:0.11, secondHandScale:0.39, hourHandScale:0.2))
        
        watchSettingsList.append(WatchSettings(name: "Omega Speedmaster Professional", dial: "SMDial", secondHand: "SMSecond", minuteHand: "SMMinute", hourHand: "SMHour", date: false,minuteHandScale:0.10,secondHandScale:0.38))
        
        watchSettingsList.append(WatchSettings(name: "Tag Heuer Monaco", dial: "MonacoDial", secondHand: "MonacoSecond", minuteHand: "MonacoMinute", hourHand: "MonacoHour", date: true,minuteHandScale:0.1,datePositionX:0,datePositionY:-99,dateColor:.white))
        
        watchSettingsList.append(WatchSettings(name: "Breitling Avenger Blackbird", dial: "ABDial", secondHand: "ABSecond", minuteHand: "ABMinute", hourHand: "ABHour", date: true,secondHandScale:0.40,datePositionY:-1,dateColor:.white))
        
        watchSettingsList.append(WatchSettings(name: "Philippe Patek Nautilus", dial: "NauDial", secondHand: "NauSecond", minuteHand: "NauMinute", hourHand: "NauHour", date: true,minuteHandScale:0.09, secondHandScale:0.44,hourHandScale:0.12,datePositionX: 75,datePositionY:-1))
        
    }
}
