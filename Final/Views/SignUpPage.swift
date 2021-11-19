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
                Color(red: 211/255,green: 211/255,blue: 211/255)
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
                        TextField("Student ID", text: $studentID)
                            .frame(width: 340, height: 45)
                            .background(Color(.white))
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .cornerRadius(22)
                            .padding(.bottom, 15)
                        Text("Student Year")
                            .foregroundColor(.white)
                        TextField("Student Year", text: $grade)
                            .frame(width: 340, height: 45)
                            .background(Color(.white))
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .cornerRadius(22)
                    }
                    Spacer()
                    Button(action: {
                        if(firstName == "" || lastName == "" || studentID == "" || grade == ""){
                            print("Please fill out all areas")
                        } else {
                            viewRouter.currentPage = .page2
                        }
                    }) {
                        Text("Sign up")
                            .frame(width: 150, height: 45)
                            .foregroundColor(.white)
                            .background(Color(red: 12/255, green: 78/255, blue: 97/255))
                            .font(.system(size: 16))
                            .cornerRadius(22)
                    }
                }
                VStack {
                    HStack {
                        Button(action: {
                            viewRouter.currentPage = .page1
                        }) {
                            Image(systemName: "chevron.backward")
                                .font(.system(size: 28))
                                .padding(.leading, 20)
                                .foregroundColor(Color(red: 12/255, green: 78/255, blue: 97/255))
                        }
                        Spacer()
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
