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
    @Published var loggedIn: Bool
    
    
    
    init(name: String = "", age: Int = 0, emailAddress: String = "", password: String = "", subscribe: Bool = false, loggedIn: Bool = false) {
        self.name = name
        self.age = age
        self.emailAddress = emailAddress
        self.password = password
        self.subscribe = subscribe
        self.loggedIn = loggedIn
    }
    
}
