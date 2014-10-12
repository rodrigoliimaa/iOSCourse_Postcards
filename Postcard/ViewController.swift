//
//  ViewController.swift
//  Postcard
//
//  Created by Rodrigo Lima on 10/11/14.
//  Copyright (c) 2014 Rodrigo Lima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var sendMailButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClick(sender: AnyObject) {
        labelName.hidden = false
        labelMessage.hidden = false
        labelName.text = enterNameTextField.text
        labelMessage.text = enterMessageTextField.text
        labelName.textColor = UIColor.blueColor()
        labelMessage.textColor = UIColor.redColor()
        enterNameTextField.text = ""
        enterMessageTextField.text = ""
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        enterMessageTextField.resignFirstResponder()
    }

}

