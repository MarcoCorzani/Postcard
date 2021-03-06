//
//  ViewController.swift
//  Postcard
//
//  Created by Marco F.A. Corzani on 16.09.14.
//  Copyright (c) 2014 Alphaweb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!

    @IBOutlet weak var mailButton: UIButton!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        // Adding a comment here to test commits.
    }

    @IBAction func senMailButtonPressed(sender: UIButton) {
        
     // Code will evaluate when we press the button
     
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail sent", forState: UIControlState.Normal)
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        enterNameTextField.text = ""
    }

}

