//
//  Persons.swift
//  Lesson 2.11
//
//  Created by Иван on 19.04.2023.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
}

class DataStore {
    var name: [String] = [
           "William",
           "Elizabeth",
           "Michael",
           "Sarah",
           "Christopher",
           "Victoria",
           "James",
           "Emily",
           "Benjamin",
           "Olivia"
       ]
    
    var surname: [String] = [
        "Johnson",
        "Davis",
        "Wilson",
        "Thompson",
        "Brown",
        "Garcia",
        "Martinez",
        "Hernandez",
        "Lee",
        "Taylor"
    ]
    
    var phone: [String] = [
        "100-001-0001",
        "200-002-0002",
        "300-003-0003",
        "400-004-0004",
        "500-005-0005",
        "600-006-0006",
        "700-007-0007",
        "800-008-0008",
        "900-009-0009",
        "100-010-0010"
    ]
    
    var email: [String] = [
        "first@gmail.com",
        "second@gmail.com",
        "third@gmail.com",
        "fourth@gmail.com",
        "fifth@gmail.com",
        "sixth@gmail.com",
        "seventh@gmail.com",
        "eighth@gmail.com",
        "nineth@gmail.com",
        "tenth@gmail.com"
    ]
    
    static func randomPerson() -> Person {
        guard let name = dataStore.name.randomElement(),
              let surname = dataStore.surname.randomElement(),
              let phone = dataStore.phone.randomElement(),
              let email = dataStore.email.randomElement() else {
            fatalError("error")
        }
        
        dataStore.name.removeAll(where: { $0 == name })
        dataStore.surname.removeAll(where: { $0 == surname })
        dataStore.phone.removeAll(where: { $0 == phone })
        dataStore.email.removeAll(where: { $0 == email })
        
        return Person(name: name, surname: surname, phone: phone, email: email)
    }
}

let dataStore = DataStore()
