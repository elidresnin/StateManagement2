//
//  StoreView.swift
//  StateManagement
//
//  Created by Eli Dresnin (student LM) on 12/12/23.
//

import SwiftUI

struct StoreView: View {
    @EnvironmentObject var store: Store
    var body: some View {
        
        NavigationView {
            List(store.products) { product in
                NavigationLink (destination: {
                    ProductDetailView(product: product)
                }, label: {
                    HStack{
                        Image(product.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150)
                        Spacer()
                        VStack{
                            Text(product.name)
                            Text("$\(String(format: "%.2f", store.products[0].price))")
                        }
                    }.padding()
                })
            }
            .navigationTitle("Products")
        }
       
    }
}

struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView()
            .environmentObject(Store())
    }
}
