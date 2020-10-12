//
//  DetailViewController.swift
//  EditList
//
//  Created by Simon Müller on 07.10.20.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var lastName: UILabel!
    @IBOutlet weak var postalCode: UILabel!
    
    var person: Person!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstName.text = self.person.firstName
        lastName.text = self.person.lastName
        postalCode.text = String(self.person.plz)
    }
    
    
    
}

