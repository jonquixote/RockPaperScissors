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
    @IBAction func Rock(sender: AnyObject) {
        YouPick.image = UIImage(named: "rock-clipart-3.png")
        self .computerChoice()
        ButtonPressed = 1
        self .result()
    }
    @IBAction func Paper(sender: AnyObject) {
        YouPick.image = UIImage(named: "parchment-scroll-clip-art_557532.jpg")
        self .computerChoice()
        ButtonPressed = 2
        self .result()
    }
    @IBAction func Scissors(sender: AnyObject) {
        YouPick.image = UIImage(named: "scissors-clip-art-cartoon-illustration-funny-32879166.png")
        self .computerChoice()
        ButtonPressed = 3
        self .result()
    }
    
    
    let random = arc4random_uniform(3) + 1
    func computerChoice () {
        if random == 1 {
            CPUPick.image = UIImage(named: "rock-clipart-3.png")
        }
        if random == 2 {
            CPUPick.image = UIImage(named: "parchment-scroll-clip-art_557532.jpg")
        }
        if random == 3 {
            CPUPick.image = UIImage(named: "scissors-clip-art-cartoon-illustration-funny-32879166.png")
        }
    }
    
    var ButtonPressed: Int?
    var winner: Int?
    func result() {
        if ButtonPressed == 1 {
            if (random==1) {winner=1}
            if (random==2) {winner=3}
            if (random==3) {winner=2}
        }
        if ButtonPressed == 2 {
            if (random==1) {winner=2}
            if (random==2) {winner=1}
            if (random==3) {winner=3}
        }
        if ButtonPressed == 3 {
            if (random==1) {winner=3}
            if (random==2) {winner=2}
            if (random==3) {winner=1}
        }
        if winner == 1 {
            Result.text = "Tie"
        }
        if winner == 2 {
            Result.text = "You win!"
        }
        if winner == 3 {
            Result.text = "You suck!"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
