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

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(person.firstName)
        firstName.text = self.person.firstName
        lastName.text = self.person.lastName
        postalCode.text = String(self.person.plz)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let editView = segue.destination as? EditViewController
        editView?.person = self.person
    }
    
}

