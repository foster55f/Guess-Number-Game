//
//  ViewController.swift
//  Guess Number Game
//
//  Created by Foster Taylor on 4/16/20.
//  Copyright © 2020 Foster Taylor. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate  {
    //MARK: Properties
    
    @IBOutlet weak var guessTextField: UITextField!
    @IBOutlet weak var guessNumberLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field’s user input through delegate callbacks.
        guessTextField.delegate = self
    }
//MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        guessNumberLabel.text = textField.text
    }
//MARK: Actions

    @IBAction func guessNumberButton(_ sender: UIButton) {
        guessNumberLabel.text = "Foster is doing something"
    }
}

