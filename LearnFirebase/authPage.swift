//
//  authPage.swift
//  LearnFirebase
//
//  Created by shashwat singh on 01/02/25.
//


import SwiftUI

struct authPage: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var authTrue: Bool = false
    @State private var navigateToHome: Bool = false
    @State private var showAlert: Bool = false
    
    func checkField() -> Bool{
        if password.isEmpty || email.isEmpty {
            return false
        }
        return true;
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Enter your email")
                .font(.title)
                .padding(.bottom,10)
            ZStack{
                     RoundedRectangle(cornerRadius: 10)
                         .frame(width: .infinity,height: 1)
                
                     
                TextField("Eg .. shash", text: $email)
     //                    .border(.blue, width: 2)
                         .padding(.bottom,10)
                         .font(.title2)
                         .foregroundColor(.black)
                         .autocapitalization(.none)
                         .offset(x: 0, y: -10)
                        
            }

            Text("Enter your password")
                .font(.title)
                .padding(.bottom,10)
            
            ZStack{
                     RoundedRectangle(cornerRadius: 10)
                         .frame(width: .infinity,height: 1)
                     
                     SecureField("Eg .. shash", text: $password)
     //                    .border(.blue, width: 2)
                         .padding(.bottom,10)
                         .font(.title2)
                         .foregroundColor(.black)
                         .autocapitalization(.none)
                         .offset(x: 0, y: -10)
                        
            }
                
            Button(action: {
                authTrue = checkField()
                if authTrue {
                    navigateToHome = true
                } else {
                    showAlert = true
                    print("Invalid Credentials")
                }
            }) {
                Text("Login")
                    .font(.title2)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, minHeight: 55)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            NavigationLink(destination: HomeViewPage(), isActive: $navigateToHome) { EmptyView() }
            .alert("Wrong Credentials", isPresented: $showAlert) {
                               Button("OK", role: .cancel) { }
                           } message: {
                               Text("Invalid Credentials")
                           }
            HStack {
                Text("Don't have an Account?")
                NavigationLink("Sign Up", destination: SignupPage())
                    .foregroundColor(.blue)
            }
        }
        .padding()
    }
}

#Preview {
    authPage()
}
