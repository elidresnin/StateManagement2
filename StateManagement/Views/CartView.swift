//
//  CartView.swift
//  StateManagement
//
//  Created by Eli Dresnin (student LM) on 12/13/23.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cart: Cart 
    var body: some View {
        List(cart.products) { product in
            HStack{
                Image(product.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                Spacer()
                VStack{
                    Text(product.name)
                    Text("$\(String(format: "%.2f", cart.products[0].price))")
                    Text("quantity: \(product.count)")
                }
            }.padding()
 
        }
        
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(Cart())
    }
}
