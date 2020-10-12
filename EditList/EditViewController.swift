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
        super.viewWillAppear(true)
        firstNameInput.text = self.person.firstName
        lastNameInput.text = self.person.lastName
        plzInput.text = String(self.person.plz)
        
//        firstNameInput.delegate = self
//        lastNameInput.delegate = self
//        plzInput.delegate = self
    }
    
    @IBAction func firstNameChanged(_ sender: UITextField) {
    }
    
    
    
    @IBAction func saveAndExitButtonPressed(_ sender: UIButton) {
        print(firstNameInput.text!)
//        print(person)
        self.person.firstName = firstNameInput.text!
        
//        self.presentingViewController?.viewWillAppear(false)
        dismiss(animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    
}
