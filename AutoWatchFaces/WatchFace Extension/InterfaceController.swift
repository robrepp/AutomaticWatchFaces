//
//  InterfaceController.swift
//  WatchFace Extension
//
//  Created by Sylvain Guillier on 27/12/2018.
//  Copyright © 2018 Sylvain Guillier. All rights reserved.
//
import WatchKit
import SpriteKit
import Foundation


class InterfaceController: WKInterfaceController,WKCrownDelegate {
    
    @IBOutlet weak var skInterface: WKInterfaceSKScene!
    
    let watchList = WatchSettingsManager.init().watchSettingsList
    var watchSelect = 0
    var crownAccumulator = 0.0
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        crownSequencer.delegate = self
        skInterface.isPaused = false
        setWatchFace()
        
    }
    
    override func didAppear() {
        hideTime()
        crownSequencer.focus()
    }
    
    func crownDidRotate(_ crownSequencer: WKCrownSequencer?, rotationalDelta: Double) {
        crownAccumulator += rotationalDelta
        if (crownAccumulator > 0.5 && watchSelect < watchList.count-1){
            watchSelect += 1
            crownAccumulator = 0.0
            setWatchFace()
        }
        else if (crownAccumulator < -0.5 && watchSelect > 0){
            watchSelect -= 1
            crownAccumulator = 0.0
            setWatchFace()
        }
    }
    
    func crownDidBecomeIdle(_ crownSequencer: WKCrownSequencer?) {
        crownAccumulator = 0.0
    }
    
    
    func setWatchFace(){
        if let scene = WatchScene(fileNamed: "WatchScene"){
            let watch = watchList[watchSelect]
            
            scene.scaleMode = .aspectFit
            scene.dialBackground.texture = SKTexture(imageNamed: watch.dial)
            
            scene.minuteHand.texture = SKTexture(imageNamed: watch.minuteHand)
            scene.minuteHand.xScale = CGFloat(watch.minuteHandScale)
            scene.minuteHand.yScale = CGFloat(watch.minuteHandScale)
            
            scene.hourHand.texture = SKTexture(imageNamed: watch.hourHand)
            scene.hourHand.xScale = CGFloat(watch.hourHandScale)
            scene.hourHand.yScale = CGFloat(watch.hourHandScale)
            
            scene.secondHand.texture = SKTexture(imageNamed: watch.secondHand)
            scene.secondHand.xScale = CGFloat(watch.secondHandScale)
            scene.secondHand.yScale = CGFloat(watch.secondHandScale)
            
            if watch.date == false{
                scene.dayLabel.isHidden = true
            }
            
            self.skInterface.presentScene(scene)
        }
    }
}

// Hack in order to disable the digital time on the screen
extension WKInterfaceController{
    func hideTime(){
        guard let cls = NSClassFromString("SPFullScreenView") else {return}
        let viewControllers = (((NSClassFromString("UIApplication")?.value(forKey:"sharedApplication") as? NSObject)?.value(forKey: "keyWindow") as? NSObject)?.value(forKey:"rootViewController") as? NSObject)?.value(forKey:"viewControllers") as? [NSObject]
        viewControllers?.forEach{
            let views = ($0.value(forKey:"view") as? NSObject)?.value(forKey:"subviews") as? [NSObject]
            views?.forEach{
                if $0.isKind(of:cls){
                    (($0.value(forKey:"timeLabel") as? NSObject)?.value(forKey:"layer") as? NSObject)?.perform(NSSelectorFromString("setOpacity:"),with:CGFloat(0))
                }
            }
        }
        
    }
    
    
}
