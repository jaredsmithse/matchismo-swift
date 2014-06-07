//
//  ViewController.swift
//  SwiftMatchismo
//
//  Created by Jared Smith on 6/7/14.
//  Copyright (c) 2014 jaredsmithse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var scoreLabel : UILabel
   

    @IBAction func touchNewGameButton(sender : AnyObject) {
        scoreLabel.text = "Touched!"
    }

}

