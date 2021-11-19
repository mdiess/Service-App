//
//  ProfilePage.swift
//  Final
//
//  Created by Max Diess on 11/18/21.
//

import SwiftUI

struct ProfilePage: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        ZStack {
            //Color(red: 211/255, green: 211/255, blue: 211/255)
                //.ignoresSafeArea()
            VStack {
                Image(systemName: "person.crop.circle")
                    .font(.system(size: 150))
                    .foregroundColor(.gray)
                    .shadow(radius: 10)
                Text("Student Name")
                    .fontWeight(.bold)
                    .font(.system(size: 40))
                Divider()
                    .padding(.bottom, 20)
                Button(action: {
                    viewRouter.currentPage = .page5
                }) {
                    Text("Log Hours")
                        .frame(width: 170, height: 50)
                        .foregroundColor(.white)
                        .background(Color(red: 12/255, green: 78/255, blue: 97/255))
                        .cornerRadius(22)
                        .shadow(radius: 10)
                }
                Spacer()
                Button(action: {
                    viewRouter.currentPage = .page1
                }) {
                    Text("Sign Out")
                        .foregroundColor(Color(red: 12/255, green: 78/255, blue: 97/255))
                }
            }
            VStack {
                HStack {
                    Button(action: {
                        viewRouter.currentPage = .page2
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

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage(viewRouter: ViewRouter())
    }
}
