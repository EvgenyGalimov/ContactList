//
//  ViewController.swift
//  ContactList
//
//  Created by user on 11/06/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    private let contactList = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        
        let contact = contactList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        //        content.text = person.contact
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    
}

extension DetailViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? DetailViewController,
              let indexPath = tableView.indexPathForSelectedRow
        else { return }
        
        let track = trackList[indexPath.row]
        vc.track = track
    }
}
