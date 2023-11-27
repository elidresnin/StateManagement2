//
//  ContentView.swift
//  StateManagement
//
//  Created by Swope, Thomas on 11/27/23.
//

import SwiftUI

struct ContentView: View {
    
    var count: Int = 0
    
    var body: some View {
        VStack {
            Image("computer")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(10)
            Text("NW-PC")
                .font(.custom("Helvetica Neue Thin", size: 60))
            Text("\(count)")
                .font(.custom("Helvetica Neue Thin", size: 60))
            Button {
                //count += 1
            } label: {
                Text("Add to Cart")
                    .padding(20)
                    .font(.custom("Helvetica Neue Thin", size: 34))
                    .background(Color.gray.opacity(0.5))
                    .cornerRadius(20)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
