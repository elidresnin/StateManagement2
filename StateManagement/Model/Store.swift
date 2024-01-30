//
//  Store.swift
//  StateManagement
//
//  Created by Eli Dresnin (student LM) on 12/12/23.
//

import SwiftUI

class Store: ObservableObject {
    @Published var products: [Product] = [
        Product(),
        Product(count: 1, name: "newPhone", image: "phone", price: 1000),
        Product(count: 1, name: "Hard Drive", image: "harddrive", price: 100),
        Product(count: 1, name: "Software", image: "software", price: 50)
    ]
    
    
}
