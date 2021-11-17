//
//  SignUpPage.swift
//  Final
//
//  Created by Max Diess on 11/16/21.
//

import SwiftUI

struct SignUpPage: View {
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var studentID: String = ""
    @State var grade: String = ""
    @StateObject var viewRouter: ViewRouter
    var body: some View {
            ZStack {
                Color(red: 221/255,green: 221/255,blue: 170/255)
                    .ignoresSafeArea()
                VStack {
                    Text("Sign Up")
                        .font(.system(size: 40))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding(.top, 15)
                    Divider()
                        .padding(.bottom, 10)
                        .foregroundColor(.white)
                    HStack {
                        VStack(alignment: .leading) {
                            Text("First Name")
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.white)
                            TextField("First Name", text: $firstName)
                                .frame(width: 150, height: 45)
                                .background(Color(.white))
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .cornerRadius(22)
                        }
                        .padding()
                        VStack(alignment: .leading) {
                            Text("Last Name")
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.white)
                            TextField("Last Name", text: $lastName)
                                .frame(width: 150, height: 45)
                                .background(Color(.white))
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .cornerRadius(22)
                        }
                        .padding()
                    }
                    VStack(alignment: .leading) {
                        Text("Student ID")
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
        }
    }
}

struct SignUpPage_Previews: PreviewProvider {
    static var previews: some View {
        SignUpPage(viewRouter: ViewRouter())
    }
}
