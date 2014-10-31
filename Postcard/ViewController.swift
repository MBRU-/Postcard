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
    
    @IBOutlet weak var enterNameTeFi: UITextField!
    
    @IBOutlet weak var enterMessageTeFi: UITextField!
    
    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        messageLabel.hidden = false

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {

        messageLabel.hidden = true
        messageLabel.text = enterNameTeFi.text
        messageLabel.textColor = UIColor.greenColor()
        messageLabel.backgroundColor = UIColor.redColor()
        messageLabel.textAlignment = NSTextAlignment.Left
        sendButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        sendButton.setTitle("Message sent", forState: UIControlState.Normal )
        
        enterNameTeFi.text = ""
        enterNameTeFi.resignFirstResponder()

    }
    
}

