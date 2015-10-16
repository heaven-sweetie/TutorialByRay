//
//  ViewController.swift
//  Tap Me
//
//  Created by heaven on 10/15/15.
//  Copyright © 2015 heaven. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    MARK: Properties
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var count = 0
    var seconds = 0
    var timer = NSTimer()
    
//    MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupGame()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    MARK: Game
    func setupGame() {
        seconds = 30
        count = 0
        
        timeLabel.text = "Time: \(seconds)"
        scoreLabel.text = "Score: \(count)"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("subtrackTime"), userInfo: nil, repeats: true)
    }
    
    func subtrackTime() {
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
        count++
        
        scoreLabel.text = "Score \n\(count)"
    }
    
}

