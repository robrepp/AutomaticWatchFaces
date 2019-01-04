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
        
        watchSettingsList.append(WatchSettings(name: "Rolex Milgauss", dial: "MGDial", secondHand: "MGSecond", minuteHand: "MGMinute", hourHand: "MGHour", date: false,minuteHandScale: 0.1,secondHandScale:0.40))
        
        watchSettingsList.append(WatchSettings(name: "Rolex Explorer II", dial: "ExDial", secondHand: "ExSecond", minuteHand: "ExMinute", hourHand: "ExHour", date: true))
        
        watchSettingsList.append(WatchSettings(name: "Omega Seamaster", dial: "SEMDial", secondHand: "SEMSecond", minuteHand: "SEMMinute", hourHand: "SEMHour", date: false,minuteHandScale:0.13, hourHandScale:0.2))
        
        watchSettingsList.append(WatchSettings(name: "Tag Heuer Monaco", dial: "MonacoDial", secondHand: "MonacoSecond", minuteHand: "MonacoMinute", hourHand: "MonacoHour", date: true,datePositionX:0,datePositionY:-99,dateColor:.white))
        
    }
}
