//
//  ViewController.swift
//  soundBtn
//
//  Created by inouexyz on 20151115.
//  Copyright © 2015-2016 inouexyz. All rights reserved.
//
//  Latest edited by inouexyz on 20160902

import UIKit
import AVFoundation

class ViewController: UIViewController,AVAudioPlayerDelegate {
    
    var player:AVAudioPlayer!
    var player2:AVAudioPlayer!
    var player3:AVAudioPlayer!
    var i = 0
    
    @IBAction func btnTap(sender: AnyObject) {
        let path = NSBundle.mainBundle().pathForResource("hee", ofType: "mp3")!
        let url = NSURL.fileURLWithPath(path)
        
        if(i==0){
            do{
                player = try AVAudioPlayer(contentsOfURL: url, fileTypeHint: nil)
                player.play()
            }catch{
                print("Failed AVAudioPlayer Instance1")
            }
            i += 1
            
        } else if(i==1) {
            do{
                player2 = try AVAudioPlayer(contentsOfURL: url, fileTypeHint: nil)
                player2.play()
            }catch{
                print("Failed AVAudioPlayer Instance2")
            }
            i += 1
            
        } else if(i==2) {
            do{
                player3 = try AVAudioPlayer(contentsOfURL: url, fileTypeHint: nil)
                player3.play()
            }catch{
                print("Failed AVAudioPlayer Instance3")
            }
            i = 0
            
        }
        //player.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

