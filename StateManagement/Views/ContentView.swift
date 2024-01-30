//
//  ContentView.swift
//  StateManagement
//
//  Created by Swope, Thomas on 11/27/23.
//

import SwiftUI

enum ViewState{
    case store, cart, account
}

struct ContentView: View {
    
    @State var viewState: ViewState = .store
    var body: some View {
        VStack {
            //Spacer()
            if viewState == .store {
                StoreView()
            }
            else if viewState == .cart {
                CartView()
            }
            else {
                AccountView()
            }
            Spacer()
            HStack{
                Spacer()
                Button{
                    viewState = .store
                }label: {
                    VStack{
                        Image(systemName: "gear")
                        Text("Store")
                    }
                }
                Spacer()
                Spacer()
                Button{
                    viewState = .cart
                }label: {
                    VStack{
                        Image(systemName: "cart")
                        Text("Cart")
                    }
                }
                Spacer()
                Spacer()
                Button{
                    viewState = .account
                }label: {
                    VStack{
                        Image(systemName: "person")
                           
                        Text("User")
                    }
                }
                Spacer()
           
            }
            .padding([.horizontal, .top], 10.0)
            .padding(.bottom, 0.0)
            .edgesIgnoringSafeArea(.vertical)
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Store())
            .environmentObject(Cart())
            .environmentObject(User())
    }
}





