//
//  ViewController.swift
//  simple_soundboard
//
//  Created by Daniel Tucker.
//
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    
    var btn01Sound = AVAudioPlayer()
    var btn02Sound = AVAudioPlayer()
    var btn03Sound = AVAudioPlayer()
    var btn04Sound = AVAudioPlayer()
    var btn05Sound = AVAudioPlayer()
    var btn06Sound = AVAudioPlayer()
    var btn07Sound = AVAudioPlayer()
    var btn08Sound = AVAudioPlayer()
    var btn09Sound = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Get Sound From Library
        let path01 = NSBundle.mainBundle().pathForResource("sound01", ofType:"mp3")
        let sound01URL = NSURL(fileURLWithPath: path01!)
        
        let path02 = NSBundle.mainBundle().pathForResource("sound02", ofType:"mp3")
        let sound02URL = NSURL(fileURLWithPath: path02!)
        
        let path03 = NSBundle.mainBundle().pathForResource("sound03", ofType:"mp3")
        let sound03URL = NSURL(fileURLWithPath: path03!)
        
        let path04 = NSBundle.mainBundle().pathForResource("sound04", ofType:"mp3")
        let sound04URL = NSURL(fileURLWithPath: path04!)
        
        let path05 = NSBundle.mainBundle().pathForResource("sound05", ofType:"mp3")
        let sound05URL = NSURL(fileURLWithPath: path05!)
        
        let path06 = NSBundle.mainBundle().pathForResource("sound06", ofType:"mp3")
        let sound06URL = NSURL(fileURLWithPath: path06!)
        
        let path07 = NSBundle.mainBundle().pathForResource("sound07", ofType:"mp3")
        let sound07URL = NSURL(fileURLWithPath: path07!)
        
        let path08 = NSBundle.mainBundle().pathForResource("sound08", ofType:"mp3")
        let sound08URL = NSURL(fileURLWithPath: path08!)
        
        let path09 = NSBundle.mainBundle().pathForResource("sound09", ofType:"mp3")
        let sound09URL = NSURL(fileURLWithPath: path09!)
    
        //Prep Sound for Play
        do{
            try btn01Sound = AVAudioPlayer(contentsOfURL: sound01URL)
            try btn02Sound = AVAudioPlayer(contentsOfURL: sound02URL)
            try btn03Sound = AVAudioPlayer(contentsOfURL: sound03URL)
            try btn04Sound = AVAudioPlayer(contentsOfURL: sound04URL)
            try btn05Sound = AVAudioPlayer(contentsOfURL: sound05URL)
            try btn06Sound = AVAudioPlayer(contentsOfURL: sound06URL)
            try btn07Sound = AVAudioPlayer(contentsOfURL: sound07URL)
            try btn08Sound = AVAudioPlayer(contentsOfURL: sound08URL)
            try btn09Sound = AVAudioPlayer(contentsOfURL: sound09URL)
            btn01Sound.prepareToPlay()
            btn02Sound.prepareToPlay()
            btn03Sound.prepareToPlay()
            btn04Sound.prepareToPlay()
            btn05Sound.prepareToPlay()
            btn06Sound.prepareToPlay()
            btn07Sound.prepareToPlay()
            btn08Sound.prepareToPlay()
            btn08Sound.prepareToPlay()
        }
        
        catch let err as NSError{
            print (err.debugDescription)
        }
        
    }
    

    
    ///// When button pressed/released, the audio will play /////
    
    
    //Button1_sound01
    @IBAction func audio01Button(sender: UIButton) {
        btn01Sound.play()
    }
    
    //Button2_sound02
    @IBAction func audio02Button(sender: UIButton) {
        btn02Sound.play()
    }
   
    //Button3_sound03
    @IBAction func audio03Button(sender: UIButton) {
        btn03Sound.play()
    }
    
    //Button3_sound04
    @IBAction func audio04Button(sender: UIButton) {
        btn04Sound.play()
    }
    
    //Button3_sound05
    @IBAction func audio05Button(sender: UIButton) {
        btn05Sound.play()
    }
    
    //Button3_sound06
    @IBAction func audio06Button(sender: UIButton) {
        btn06Sound.play()
    }
    
    //Button3_sound07
    @IBAction func audio07Button(sender: UIButton) {
        btn07Sound.play()
    }
    
    //Button3_sound08
    @IBAction func audio08Button(sender: UIButton) {
        btn08Sound.play()
    }
    
    //Button3_sound09
    @IBAction func audio09Button(sender: UIButton) {
        btn09Sound.play()
    }
    
    
    
    
}


