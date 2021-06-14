//
//  DetailViewController.swift
//  ContactList
//
//  Created by user on 14/06/2021.
//

import UIKit

class DetailedContactsInfoViewController: UIViewController {

    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var contactPhoto: UIImageView!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        phoneNumberLabel.text = person.phone
        emailLabel.text = person.mail
    }
}
