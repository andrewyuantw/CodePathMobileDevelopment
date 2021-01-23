//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Andrew Yuan on 1/19/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet var background: UIView!
    
    @IBOutlet weak var textField: UITextField!
    
    
    var backgroundColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backgroundColor = view.backgroundColor
        
    }

    @IBAction func didClickBackground(_ sender: Any) {
        background.backgroundColor = UIColor.systemGray2
    }
    
    @IBAction func didClickChangeText(_ sender: Any) {
        if (textField.text == ""){
            textLabel.text = "Goodbye"
        }else{
            textLabel.text = textField.text
        }
        
        textField.text = ""
        view.endEditing(true)
    }
    @IBAction func Reset(_ sender: Any) {
        background.backgroundColor = backgroundColor
        textLabel.textColor = UIColor.white
        textLabel.text = "Hello From Andrew"
    }
    @IBAction func didClick(_ sender: Any) {
        print("Button pressed")
        textLabel.textColor = UIColor.black
    }
}

