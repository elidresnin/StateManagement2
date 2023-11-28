//
//  CartButtonView.swift
//  StateManagement
//
//  Created by Swope, Thomas on 11/28/23.
//

import SwiftUI

struct CartButtonView: View {
    
    @Binding var count: Int
    
    var body: some View {
        Button {
            count += 1
        } label: {
            Text("Add to Cart")
                .padding(20)
                .font(.custom("Helvetica Neue Thin", size: 34))
                .background(Color.gray.opacity(0.5))
                .cornerRadius(20)
        }
    }
}

struct CartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CartButtonView(count: Binding.constant(0))
    }
}
