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
    
    var firstNameData: String!
    var lastNameData: String!
    var postalCodeData: String!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstName.text = self.firstNameData
    }
    
    
    
}

