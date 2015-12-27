//
//  ViewController.swift
//  FoodTracker
//
//  Created by Preeti Patel on 2015-12-26.
//  Copyright © 2015 Jayesh Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

  // MARK: Properties
  @IBOutlet weak var nameTextField: UITextField!
  @IBOutlet weak var mealNameLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()

    // Handle the text field's user input through delegate callbacks.
    nameTextField.delegate = self
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // MARK: UITextFieldDelegate

  func textFieldShouldReturn(textField: UITextField) -> Bool {
    // Hide the keyboard.
    textField.resignFirstResponder()
    return true
  }

  func textFieldDidEndEditing(textField: UITextField) {
    mealNameLabel.text = textField.text
  }

  // MARK: Actions
  @IBAction func setDefaultLabelText(sender: UIButton) {
    mealNameLabel.text = "Default Text"
  }

}