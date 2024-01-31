//
//  AuthenticationView.swift
//  StateManagement
//
//  Created by Eli Dresnin (student LM) on 1/30/24.
//

import SwiftUI

struct AuthenticationView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color.background)
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                    .padding()
                Spacer()
                ZStack{
                    Rectangle()
                        .foregroundColor(Color.white)
                        .frame(width: 300, height: 65)
                        .cornerRadius(25)
                    Text("Sign Up")
                }
                Spacer()
                ZStack{
                    Rectangle()
                        .foregroundColor(Color.white)
                        .frame(width: 300, height: 65)
                        .cornerRadius(25)
                    Text("Login")
                }
                Spacer()
            }
        }
       
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView()
    }
}
