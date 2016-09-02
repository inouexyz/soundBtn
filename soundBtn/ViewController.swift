//
//  ViewController.swift
//  soundBtn
//
//  Created by inouexyz on 20151115.
//  Copyright © 2015-2016 inouexyz. All rights reserved.
//
//  Latest edited by inouexyz on 20160729

import UIKit
import AVFoundation

class ViewController: UIViewController,AVAudioPlayerDelegate {
    
    var player:AVAudioPlayer!
    
    @IBAction func btnTap(sender: AnyObject) {
        let path = NSBundle.mainBundle().pathForResource("hee", ofType: "mp3")!
        let url = NSURL.fileURLWithPath(path)
        
        // AVAudioPlayerのインスタンス化
        do{
            player = try AVAudioPlayer(contentsOfURL: url, fileTypeHint: nil)
        }catch{
            print("Failed AVAudioPlayer Instance")
        }
        
        // 再生
        player.play()
        
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

