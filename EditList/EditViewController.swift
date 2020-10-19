//
//  EditViewController.swift
//  EditList
//
//  Created by Simon Müller on 12.10.20.
//

import UIKit

class EditViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var firstNameInput: UITextField!
    @IBOutlet weak var lastNameInput: UITextField!
    @IBOutlet weak var plzInput: UITextField!
    var person: Person!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        firstNameInput.text = self.person.firstName
        lastNameInput.text = self.person.lastName
        plzInput.text = String(self.person.plz)
    }
    
    @IBAction func saveAndExitButtonPressed(_ sender: UIButton) {
        self.person.firstName = firstNameInput.text!
        self.person.lastName = lastNameInput.text!
        if let plz: Int = Int(plzInput.text!) {
            self.person.plz = plz
        } else {
            self.person.plz = 0
        }
        dismiss(animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
