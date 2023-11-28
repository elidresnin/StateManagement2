//
//  ContentView.swift
//  StateManagement
//
//  Created by Swope, Thomas on 11/27/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var product = Product()
    
    var body: some View {
        VStack {
            ProductDetailView(product: $product)
            CartButtonView(count: $product.count)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





