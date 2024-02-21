//
//  SignUpView.swift
//  StateManagement
//
//  Created by Eli Dresnin (student LM) on 2/1/24.
//

import SwiftUI
import FirebaseAuth

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
                        .multilineTextAlignment(.center)
                }
                
                ZStack{
                    Rectangle()
                        .foregroundColor(Color.white)
                        .frame(width: 300, height: 65)
                        .cornerRadius(25)
                    SecureField("password", text: $user.password)
                        .multilineTextAlignment(.center)
                }
                Spacer()
                
                Button {
                    Auth.auth().signIn(withEmail: user.emailAddress, password: user.password) {user, error in
                        if let _ = user {
                            self.user.loggedIn = true
                            print("login success")
                        }
                        else if let e = error {
                            print(e.localizedDescription)
                        }
                    }
                } label: {
                    ZStack{

                        Rectangle()
                            .foregroundColor(Color.yellow)
                            .frame(width: 300, height: 65)
                            .cornerRadius(25)
                        Text("Log In")
                            .font(Constants.smallFont)
                    }
                }
                
                ZStack{
                    Button {
                        //firebase singleton, will always have trailing closure as last parameter
                        Auth.auth().createUser(withEmail: user.emailAddress, password: user.password){user, error in
                            if let _ = user {
                                self.user.loggedIn = true
                                print("sign up success")
                                
                            }
                            else if let e = error {
                                print(e.localizedDescription)
                            }
                        }
                    } label: {
                        ZStack{
                            
                            Rectangle()
                                .foregroundColor(Color.green)
                                .frame(width: 300, height: 65)
                                .cornerRadius(25)
                            Text("Sign Up")
                                .font(Constants.smallFont)
                        }
                    }
                    
                    
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
