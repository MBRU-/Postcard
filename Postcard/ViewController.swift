//
//  ViewController.swift
//  Postcard
//
//  Created by Martin Brunner on 31.10.14.
//  Copyright (c) 2014 Martin Brunner. All rights reserved.
//



import UIKit


class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTeFi: UITextField!
    
    @IBOutlet weak var enterMessageTeFi: UITextField!
    
    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameLabel.hidden = true
        messageLabel.hidden = true

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {

        messageLabel.hidden = false
        if  (!enterMessageTeFi.text.isEmpty) && (!enterNameTeFi.text.isEmpty) {
            nameLabel.hidden = false
            messageLabel.text = enterMessageTeFi.text
            messageLabel.textColor = UIColor.greenColor()
            messageLabel.backgroundColor = UIColor.redColor()
            messageLabel.textAlignment = NSTextAlignment.Left
            sendButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
            sendButton.setTitle("Message sent", forState: UIControlState.Normal )
            nameLabel.text = enterNameTeFi.text
            nameLabel.textColor = UIColor.blueColor()
            enterMessageTeFi.text = ""
            
            enterNameTeFi.text = ""
            enterNameTeFi.resignFirstResponder()
    
        }
        else {
            messageLabel.textColor = UIColor.redColor()
            messageLabel.text = "Enter name and message first"
        }
        
        
        // last line entered

    }
    
}

    