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
        watchSettingsList.append(WatchSettings(name: "Rolex Submariner", dial: "SubDial", secondHand: "SubSecond", minuteHand: "SubMinute", hourHand: "SubHour", date: false,secondHandScale:0.35))
        
        watchSettingsList.append(WatchSettings(name: "Rolex Milgauss", dial: "MGDial", secondHand: "MGSecond", minuteHand: "MGMinute", hourHand: "MGHour", date: false,minuteHandScale: 0.069))
        
        watchSettingsList.append(WatchSettings(name: "Rolex Explorer II", dial: "ExDial", secondHand: "ExSecond", minuteHand: "ExMinute", hourHand: "ExHour", date: true,secondHandScale:0.35))
        
        watchSettingsList.append(WatchSettings(name: "Omega Seamaster", dial: "SEMDial", secondHand: "SEMSecond", minuteHand: "SEMMinute", hourHand: "SEMHour", date: false,minuteHandScale:0.1, secondHandScale:0.32, hourHandScale:0.185))
        
    }
}
