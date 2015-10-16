//
//  ViewController.swift
//  Tap Me
//
//  Created by heaven on 10/15/15.
//  Copyright © 2015 heaven. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
//    MARK: Properties
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var count = 0
    var seconds = 0
    var timer = NSTimer()
    
    var buttonBeep: AVAudioPlayer?
    var secondBeep: AVAudioPlayer?
    var backgroudMusic: AVAudioPlayer?
    
//    MARK: Audio
    func setupAudioPlayerWithFile(file: NSString, type: NSString) -> AVAudioPlayer? {
        let path = NSBundle.mainBundle().pathForResource(file as String, ofType: type as String)
        let url = NSURL.fileURLWithPath(path!)
        
        var audioPlayer: AVAudioPlayer?
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOfURL: url)
        } catch {
            print("Audio not available.")
        }
        
        return audioPlayer
    }
    
//    MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor(patternImage: UIImage(named: "bg_tile")!)
        timeLabel.backgroundColor = UIColor(patternImage: UIImage(named: "field_time")!)
        scoreLabel.backgroundColor = UIColor(patternImage: UIImage(named: "field_score")!)
        
        if let buttonBeep = self.setupAudioPlayerWithFile("ButtonTap", type: "wav") {
            self.buttonBeep = buttonBeep
        }
        if let secondBeep = self.setupAudioPlayerWithFile("SecondBeep", type: "wav") {
            self.secondBeep = secondBeep
        }
        if let backgroudMusic = self.setupAudioPlayerWithFile("HallOfTheMountainKing", type: "mp3") {
            self.backgroudMusic = backgroudMusic
        }

        setupGame()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    MARK: Game
    func setupGame() {
        backgroudMusic?.volume = 0.3
        backgroudMusic?.play()
        
        seconds = 30
        count = 0
        
        timeLabel.text = "Time: \(seconds)"
        scoreLabel.text = "Score: \(count)"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("subtrackTime"), userInfo: nil, repeats: true)
    }
    
    func subtrackTime() {
        secondBeep?.play()
        
        seconds--
        timeLabel.text = "Time: \(seconds)"
        
        if seconds == 0 {
            timer.invalidate()
            
            let alertController = UIAlertController(title: "Time is up!!!", message: "You scored \(count) points.", preferredStyle: .Alert)
            alertController.addAction(UIAlertAction(title: "Play again.", style: UIAlertActionStyle.Default, handler: {
                action in
                    self.setupGame()
            }))
            presentViewController(alertController, animated: true, completion: nil)
        }
    }

//    MARK: Action
    @IBAction func buttonPressed(sender: UIButton) {
        buttonBeep?.play()
        
        count++
        
        scoreLabel.text = "Score \n\(count)"
    }
    
}

