//
//  ViewController.swift
//  myTF
//
//  Created by D7703_13 on 2018. 3. 19..
//  Copyright © 2018년 gyuminpark. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myLB: UILabel!
    @IBOutlet weak var myTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTF.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func myBT(_ sender: UIButton) {
        myLB.text = myTF.text
        myTF.text = ""
        myTF.resignFirstResponder()
        
    }
    //UITFdelegate method
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    // called when 'return' key pressed. return NO to ignore.
        myTF.resignFirstResponder()
          return true
    }
}
