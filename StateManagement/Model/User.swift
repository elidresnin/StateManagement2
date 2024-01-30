//
//  User.swift
//  StateManagement
//
//  Created by Eli Dresnin (student LM) on 12/20/23.
//

import Foundation


class User: ObservableObject{
    
    @Published var name: String
    @Published var age: Int
    @Published var emailAddress: String
    @Published var password: String
    @Published var subscribe: Bool
    
    init(name: String = "Eli", age: Int = 16, emailAddress: String = "eli@email.com", password: String = "password", subscribe: Bool = true) {
        self.name = name
        self.age = age
        self.emailAddress = emailAddress
        self.password = password
        self.subscribe = subscribe
    }
    
}
