//
//  LoginPage.swift
//  Final
//
//  Created by Max Diess on 11/16/21.
//

import SwiftUI

struct LoginPage: View {
    // change username to emailAddress
    @State var username: String = ""
    @State var password: String = ""
    @StateObject var viewRouter: ViewRouter
    var logincreds: CredStruct
    var body: some View {
        
        ZStack {
            Color(red: 22/255,green: 22/255,blue: 70/255)
                .ignoresSafeArea()
            //Color(gradient: Gradient(colors: [Color(red: 173/255, green: 216/255, blue: 230/255), Color(red: 12/255, green: 78/255, blue: 97/255)]), startPoint: .leading, endPoint: .trailing))
            VStack {
                Image("bcp").padding(.bottom, 75)
                Text("Sign in")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .multilineTextAlignment(.center)
                    .padding(.top, 15)
                TextField("Username", text: $username)
                    .frame(width: 300, height: 45)
                    .background(Color(.white))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(.system(size: 16))
                    .multilineTextAlignment(.center)
                    .cornerRadius(22)
                TextField("Password", text: $password)
                    .frame(width: 300, height: 45)
                    .background(Color(.white))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(.system(size: 16))
                    .multilineTextAlignment(.center)
                    .cornerRadius(22)
                Button(action: {
                    /*
                    if(username == "Max" && password == "Diess") {
                        viewRouter.currentPage = .page2
                    } else {
                        print("Invalid")
                    }
                    */
 //                   /*
                    //let i = 0
                    for _ in 0..<5 {
                        if(username == logincreds.uName && password == logincreds.pWord) {
                            viewRouter.currentPage = .page2
                        } else {
                            print("Invalid Login")
                        }
                    }
          //          */
                }) {
                    Text("Sign in")
                        .frame(width: 250, height: 45)
                        .foregroundColor(.white)
                        .background(Color(red: 102/255,green: 98/255,blue: 227/255))
                        .cornerRadius(22)
                        .font(.system(size: 16))
                        .shadow(radius: 10)
                }
                .padding(.top, 20)
                Button(action: {
                    viewRouter.currentPage = .page3
                }) {
                    Text("Sign up")
                        .foregroundColor(.white)
                        .padding(.top, 10)
                    
                }
                Spacer()
                
            }
            
        }
        
    }
}

struct login_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage(viewRouter: ViewRouter(), logincreds: logincreds[0])
    }
}
