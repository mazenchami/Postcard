//
//  ViewController.swift
//  Postcard
//
//  Created by Mazen Chami on 10/20/14.
//  Copyright (c) 2014 Mazen Chami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 'declaring' variables
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // function for whenever the send mail button is pressed
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we press the button
        
        // show hidden message label
        messageLabel.hidden = false
        // replace the label text with what is entered in the message text field
        messageLabel.text = enterMessageTextField.text
        // changing the message label text color
        messageLabel.textColor = UIColor.redColor()
        
        // emtpy message text field which reshows placeholder functionality
        enterMessageTextField.text = ""
        // make the keyboard go away by calling a function
        enterMessageTextField.resignFirstResponder()
        
        // updating the title of the send mail button
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

