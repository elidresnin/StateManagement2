//
//  Cart.swift
//  StateManagement
//
//  Created by Eli Dresnin (student LM) on 12/13/23.
//

import SwiftUI

class Cart: ObservableObject {
    @Published var products: [Product] = [
        Product(),
        Product(count: 1, name: "newPhone", image: "phone", price: 1000),
        Product(count: 1, name: "Hard Drive", image: "harddrive", price: 100),
        Product(count: 1, name: "Software", image: "software", price: 50)
    ]
    
    var total: Double {
        var total: Double = 0
        for p in products {
            total += Double(p.count) * p.price
        }
        return total
    }
}
