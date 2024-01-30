//
//  AccountView.swift
//  StateManagement
//
//  Created by Eli Dresnin (student LM) on 12/20/23.
//

import SwiftUI

struct AccountView: View {
    @EnvironmentObject var user: User

    var body: some View {
        VStack {
            HStack {
                Text("Account")
                    .font(.largeTitle)
                Spacer()
            }
            TextField("Name", text: $user.name)
            TextField("Email", text: $user.emailAddress)
            SecureField("password", text: $user.password)
            Toggle("subscribe", isOn: $user.subscribe)
           
        }
        .padding()
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
            .environmentObject(User())
    }
}
