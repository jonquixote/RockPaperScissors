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
    }
    @IBAction func Paper(sender: AnyObject) {
        YouPick.image = UIImage(named: "parchment-scroll-clip-art_557532.jpg")
    }
    @IBAction func Scissors(sender: AnyObject) {
        YouPick.image = UIImage(named: "scissors-clip-art-cartoon-illustration-funny-32879166.png")
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
