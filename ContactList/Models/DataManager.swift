//
//  DataManager.swift
//  ContactList
//
//  Created by user on 11/06/2021.
//

import Foundation

class DataManager {
    

    let name: String
    let surname: String
    let mail: String
    let phone: String
    
    init(
        name: String,
        surname: String,
        mail: String,
        phone: String
         )
    {
        self.name = name
        self.surname = surname
        self.mail = mail
        self.phone = phone
    }
    let names = ["Bruce", "John", "Steven", "Aaron", "Tim", "Allan", "Sharon", "Ted", "Carl", "Nicola"]
    let surnames = ["Butler", "Smith", "Black", "Robertson", "Murphy", "Williams", "Isaacson", "Jankin", "Pennyworth", "Dow"]
    let mails = ["wer@ii.com", "gtr@io.com", "wfd@kj.com", "dfv@yt.com", "kjh@ui.com", "bhy@qw.com", "gju@ty.com", "qss@df.com", "tyu@po.com", "ojh@nk.com"]
    let phones = ["513456", "789077", "476548", "112255", "098567", "135468", "643567", "235431", "764379", "098678"]
    
    func makeContact() -> [DataManager] {
    var contacts: [DataManager] = []
    for _ in 1...10 {
    guard let name = names.randomElement(),
    let surname = surnames.randomElement(),
    let mail = mails.randomElement(),
    let phone = phones.randomElement() else {
    break
    }
        contacts.append(DataManager(name: name, surname: surname, mail: mail, phone: phone))
    }
        return contacts
    }
    
}



