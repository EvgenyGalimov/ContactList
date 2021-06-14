//
//  Person.swift
//  ContactList
//
//  Created by user on 11/06/2021.
//

struct Person {
    let name: String
    let surname: String
    let mail: String
    let phone: String
    
    var contact: String {
        "\(name) \(surname)"
    }
  
}


extension Person {
    static func getPersonData() -> [Person] {
        [
            Person(name: "Bruce", surname: "Butler", mail: "wer@ii.com", phone: "513456"),
            Person(name: "John", surname: "Smith", mail: "gtr@io.com", phone: "789077"),
            Person(name: "Steven", surname: "Black", mail: "wfd@kj.com", phone: "476548"),
            Person(name: "Aaron", surname: "Robertson", mail: "dfv@yt.com", phone: "112255"),
            Person(name: "Tim", surname: "Murphy", mail: "kjh@ui.com", phone: "098567"),
            Person(name: "Allan", surname: "Williams", mail: "bhy@qw.com", phone: "135468"),
            Person(name: "Sharon", surname: "Isaacson", mail: "gju@ty.com", phone: "643567"),
            Person(name: "Ted", surname: "Jankin", mail: "qss@df.com", phone: "235431"),
            Person(name: "Carl", surname: "Pennyworth", mail: "tyu@po.com", phone: "764379"),
            Person(name: "Nicola", surname: "Dow", mail: "ojh@nk.com", phone: "098678")
        
        ]
    }
}







