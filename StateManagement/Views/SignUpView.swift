//
//  SignUpView.swift
//  StateManagement
//
//  Created by Eli Dresnin (student LM) on 2/1/24.
//

import SwiftUI

struct SignUpView: View {
    @EnvironmentObject var user: User
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
                    TextField("email address", text: $user.emailAddress)
                }
               
                ZStack{
                    Rectangle()
                        .foregroundColor(Color.white)
                        .frame(width: 300, height: 65)
                        .cornerRadius(25)
                    TextField("email address", text: $user.password)
                }
                Spacer()
                ZStack{
                    Rectangle()
                        .foregroundColor(Color.white)
                        .frame(width: 300, height: 65)
                        .cornerRadius(25)
                    Text("sign up")
                }
                Spacer()
            }
        }
    }
    
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
            .environmentObject(User())
    }
}
