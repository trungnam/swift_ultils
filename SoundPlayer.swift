//
//  SoundPlayer.swift
//  jobapp
//
//  Created by trung nam on 3/4/17.
//  Copyright © 2017 trung nam. All rights reserved.
//

import Foundation
import MediaPlayer
import AVFoundation

public class SoundPlayer{
    
    var playerItem:AVPlayerItem?
    var player = AVAudioPlayer()
    var url: NSURL
    
    
    init(_ url : NSURL){
        self.url = url
//        let nurl = NSBundle.mainBundle().URLForResource("abc", withExtension: "mp3", subdirectory: "music")!
        do{
            player = try  AVAudioPlayer(contentsOfURL: url)
            player.prepareToPlay()
            player.play()

        }catch let error as NSError {
            print(error.description)
        }
    }
    
    func playToTime(time : Double){
        if(player.duration > time){
        player.currentTime = time
        player.play()
        }
        
    }
    
    func play(){
        player.play()
       
    }
    
    func stop(){
        player.stop()
    }
    

}

