//
//  ContactsListViewController.swift
//  ContactList
//
//  Created by user on 14/06/2021.
//

import UIKit

class ContactsListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    private let persons = Person.getPersonData()
    private var usersData: Person!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "contactsList")
        
    }
    

}


extension ContactsListViewController: UITableViewDelegate {

}

extension ContactsListViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].contact
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactsList", for: indexPath)
        
        if indexPath.row % 2 == 0 {
            cell.textLabel?.text = persons[indexPath.section].phone
            cell.imageView?.image = UIImage(systemName: "phone.fill")
        } else {
            cell.textLabel?.text = persons[indexPath.section].mail
            cell.imageView?.image = UIImage(systemName: "mail.fill")
        }
        
        return cell
    }
    
}
