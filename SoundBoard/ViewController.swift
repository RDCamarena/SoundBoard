//
//  ViewController.swift
//  SoundBoard
//
//  Created by ruben camarena on 4/19/20.
//  Copyright © 2020 Ruben Camarena. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer?
    
    let bites = ["dono", "follow", "sub", "angel"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Connects all button to the playSounBite method
    @IBAction func buttons(_ sender: UIButton) {
        
        let tag = sender.tag
        
        playSoundBite(filename: bites[tag])
    }
    
    
    
    
    
    func playSoundBite(filename:String) {
        
        // Gets the url from the sounds folder
        let url = Bundle.main.url(forResource: filename, withExtension: "mp3")
       
        // Confirms url is there, otherwise abort
        guard url != nil else {
            return
        }
        
        // Create the audio player and play sound
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
        }
        catch {
            print ("Error")
        }
        
    }
    
    
}

