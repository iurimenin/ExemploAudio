//
//  ViewController.swift
//  ExemploAudio
//
//  Created by Iuri Menin on 05/08/16.
//  Copyright © 2016 Iuri Menin. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var volume: UISlider!
    
    @IBAction func play(sender: UIButton) {
        
        player.play()
    }
    
    @IBAction func pause(sender: UIButton) {
        player.pause()
    }
    
    @IBAction func ajustaVolume(sender: UISlider) {
    
        player.volume = volume.value
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let audioPath = NSBundle.mainBundle().pathForResource("music", ofType: "mp3")
        
        do {
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath!))
        } catch {
            //Processa erro aqui
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

