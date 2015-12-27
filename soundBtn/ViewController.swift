//
//  ViewController.swift
//  soundBtn
//
//  Created by ginga on 2015/11/15.
//  Copyright © 2015年 ginga. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player:AVAudioPlayer!

    @IBAction func btnTap(sender: AnyObject) {
        let path = NSBundle.mainBundle().pathForResource("sample", ofType: "mp3")!
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

