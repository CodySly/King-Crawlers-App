//
//  LoginView.swift
//  King Crawlers
//
//  Created by Cody Burgess on 10/20/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                
                //Image
                
                Image("KingLogo1024")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 250)
                    .background(Color.blue)
                .padding(.all)
            }
            
            // Form Feilds
            
            VStack(spacing: 24) {
                InputView(text: $email,
                            title: "Email Address",
                            placeholder: "name@example.com"

                )
                
                InputView(text: $password,
                            title: "Password",
                            placeholder: "Enter your password",
                            isSecureField: true
                )
                
            }
            .padding(.horizontal)
            .padding(.top, 12)
            
            //Sign in button
            
            Button {
                print("Log user in..")
            } label: {
                HStack {
                    Text("SIGN IN")
                        .fontWeight(.semibold)
                    Image(systemName: "arrow.right")
                }
                .foregroundColor(.white)
              //  .frame(width: UIScreen.main.bounds.width -32, height: 48)
            }
            .backgroundStyle(Color(.systemBlue))
            .cornerRadius(10)
            .padding(.top, 24)
            
           Spacer()
        }
    }
    
}

#Preview {
    LoginView()
}
