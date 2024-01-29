//
//  ViewController.swift
//  Exercise3
//
//  Created by user237599 on 1/28/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    @IBOutlet weak var countryTextField: UITextField!
    
    
    @IBOutlet weak var ageTextField: UITextField!
    
    
    @IBOutlet weak var textViewInput: UITextView!
    
    
    @IBOutlet weak var invisibleLabel: UILabel!
    
    
    
    @IBAction func firstNameInput(_ sender: Any) {
    }
    
    @IBAction func lastNameInput(_ sender: Any) {
    }
    
    
    @IBAction func countryInput(_ sender: Any) {
    }
    
    @IBAction func ageInput(_ sender: Any) {
    }
    
    
    @IBAction func addButton(_ sender: Any) {
        updateTextView()
    }
    
    
    @IBAction func submitbutton(_ sender: Any) {
        if isInformationComplete() {
                    invisibleLabel.text = "Successfully submitted!"
                } else {
                    invisibleLabel.text = "Complete the missing Info!"
                }
    }
    
    
    @IBAction func clearButton(_ sender: Any) {
        clearAllFields()
    }
    
        private func updateTextView() {
            let userInfo = """
            First Name: \(firstNameTextField.text ?? "")
            Last Name: \(lastNameTextField.text ?? "")
            Country: \(countryTextField.text ?? "")
            Age: \(ageTextField.text ?? "")
            """
            textViewInput.text = userInfo
        }
    
    
    
        private func isInformationComplete() -> Bool {
            return !firstNameTextField.text!.isEmpty &&
                   !lastNameTextField.text!.isEmpty &&
                   !countryTextField.text!.isEmpty &&
                   !ageTextField.text!.isEmpty
        }
    
        private func clearAllFields() {
            firstNameTextField.text = ""
            lastNameTextField.text = ""
            countryTextField.text = ""
            ageTextField.text = ""
            textViewInput.text = ""
            invisibleLabel.text = ""
        }
    
}

