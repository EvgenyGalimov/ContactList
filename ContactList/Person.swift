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
    static func getContactList() -> [Person] {
        [
            Person(name: DataManager, surname: <#T##String#>, mail: <#T##String#>, phone: <#T##Int#>)
        
        ]
        

    }
    
}







