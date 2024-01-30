//
//  Product.swift
//  StateManagement
//
//  Created by Swope, Thomas on 11/27/23.
//

import Foundation

struct Product: Identifiable{
    var id = UUID()
    
    var count: Int
    var name: String
    var image: String
    var price: Double
    
    init(count: Int = 0, name: String = "NW-PC", image: String = "computer", price: Double = 19.99){
        self.count = count
        self.name = name
        self.image = image
        self.price = price
    }
}
