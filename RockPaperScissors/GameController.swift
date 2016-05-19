//
//  GameController.swift
//  RockPaperScissors
//
//  Created by John Hawley on 4/27/16.
//  Copyright © 2016 JohnnyMade. All rights reserved.
//

import UIKit

class GameController: UIViewController {

    
    
    @IBOutlet weak var CPU: UILabel!
    @IBOutlet weak var You: UILabel!
    @IBOutlet weak var Result: UILabel!
    @IBOutlet weak var YouPick: UIImageView!
    @IBOutlet weak var CPUPick: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Result.text = "Play!"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Rock(sender: AnyObject) {
        YouPick.image = UIImage(named: "rock-clipart-3.png")
        ButtonPressed = 1
        self .result()
    }
    @IBAction func Paper(sender: AnyObject) {
        YouPick.image = UIImage(named: "parchment-scroll-clip-art_557532.jpg")
        ButtonPressed = 2
        self .result()
    }
    @IBAction func Scissors(sender: AnyObject) {
        YouPick.image = UIImage(named: "scissors-clip-art-cartoon-illustration-funny-32879166.png")
        ButtonPressed = 3
        self .result()
    }
    
    
    func computerChoice () -> UInt32 {
        let random = arc4random_uniform(3) + 1
        if random == 1 {
            CPUPick.image = UIImage(named: "rock-clipart-3.png")
        }
        if random == 2 {
            CPUPick.image = UIImage(named: "parchment-scroll-clip-art_557532.jpg")
        }
        else if random == 3 {
            CPUPick.image = UIImage(named: "scissors-clip-art-cartoon-illustration-funny-32879166.png")
        }
        return random
    }
    
    var ButtonPressed: Int?
    var winner: Int?
    func result() {
        let compResult = self.computerChoice()
        
        switch (ButtonPressed!, compResult) {
        case (1,1):
            winner = 1
        case (1,2):
            winner = 3
        case (1,3):
            winner = 2
        case (2,1):
            winner = 2
        case (2,2):
            winner = 1
        case (2,3):
            winner = 3
        case (3,1):
            winner = 3
        case (3,2):
            winner = 2
        case (3,3):
            winner = 1
        default:
            break
        }
/*
      if ButtonPressed==1 {
            if (compResult==1) {winner=1}
            if (compResult==2) {winner=3}
            if (compResult==3) {winner=2}
        }
        if ButtonPressed==2 {
            if (compResult==1) {winner=2}
            if (compResult==2) {winner=1}
            if (compResult==3) {winner=3}
        }
        else if ButtonPressed==3 {
            if (compResult==1) {winner=3}
            if (compResult==2) {winner=2}
            if (compResult==3) {winner=1}
        }
*/

        if winner==1 {
            Result.text="Tie"
        }
        if winner==2 {
            Result.text="You win!"
        }
        else if winner==3 {
            Result.text="You suck!"
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
