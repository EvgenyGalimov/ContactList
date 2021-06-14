//
//  ViewController.swift
//  ContactList
//
//  Created by user on 11/06/2021.
//

import UIKit

//class ViewController: UIViewController {
//    @IBOutlet weak var tableView: UITableView!
//
//    private let contactList = [String]()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        tableView.delegate = self
//        tableView.dataSource = self
//    }
//
//
//}
//
//extension ViewController: UITableViewDelegate {
//
//}
//
//extension ViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        contactList.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
//
//        let contact = contactList[indexPath.row]
//
//        var content = cell.defaultContentConfiguration()
//
//        //        content.text = person.contact
//
//        cell.contentConfiguration = content
//
//        return cell
//    }
//
//
//}



class ContactsInfoViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    private let persons = Person.getPersonData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailedInfoVc = segue.destination as? DetailedContactsInfoViewController,
        let indexPath = tableView.indexPathForSelectedRow
        else { return }
    
        let person = persons[indexPath.row]
        
        detailedInfoVc.person = person
    }
    
}

extension ContactsInfoViewController: UITableViewDelegate {
}

extension ContactsInfoViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "trackCell",
            for: indexPath)
        let singleUser = persons[indexPath.row]
        var cellContent = cell.defaultContentConfiguration()
        cellContent.text = singleUser.contact
        cell.contentConfiguration = cellContent
        
        return cell
    }
}
