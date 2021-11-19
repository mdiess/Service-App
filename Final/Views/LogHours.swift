//
//  LogHours.swift
//  Final
//
//  Created by Max Diess on 11/18/21.
//

import SwiftUI

struct LogHours: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        ScrollView {
            ZStack {
                VStack {
                    Text("Log Hours")
                        .font(.system(size: 60))
                        .fontWeight(.bold)
                        .padding(.top, 30)
                    Divider()
                        .padding(.bottom, 25)
                    Text("Enter your hours")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .frame(width: 250, height: 45)
                        .background(Color(red: 240/255, green: 240/255, blue: 240/255))
                        .cornerRadius(22)
                        .padding(.bottom, 25)
                    CustomProgress()
                    Spacer()
                }
                VStack {
                    HStack {
                        Button(action: {
                            viewRouter.currentPage = .page4
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
}

struct LogHours_Previews: PreviewProvider {
    static var previews: some View {
        LogHours(viewRouter: ViewRouter())
    }
}


struct CustomProgress: View {
    @State var hours: CGFloat = 0
    @State var inputHours: String = ""
    var body: some View {
        VStack {
            TextField("Hours", text: $inputHours)
                .frame(width: 250, height: 45)
                .background(Color(red: 211/255, green: 211/255, blue: 211/255))
                .cornerRadius(22)
                .multilineTextAlignment(.center)
                .shadow(radius: 1)
                .padding(.bottom, 25)
            ZStack(alignment: .leading) {
                ZStack {
                    Capsule()
                        .fill(Color.black.opacity(0.08))
                        .frame(width: 400, height: 30)
                        .shadow(radius: 10)
                }
                Capsule()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 173/255, green: 216/255, blue: 230/255), Color(red: 12/255, green: 78/255, blue: 97/255)]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: hours, height: 30)
                    .cornerRadius(22)
                
            }
            Button(action: {
                guard let n = NumberFormatter().number(from: inputHours) else { return }
                hours = hours + (CGFloat(truncating: n) * 20.0)
                if(hours > 400) {
                    hours = 400
                }
                inputHours = ""
            }) {
                Text("Return")
                    .frame(width: 120, height: 45)
                    .foregroundColor(.white)
                    .background(Color(red: 12/255, green: 78/255, blue: 97/255))
                    .cornerRadius(22)
                    .shadow(radius: 10)
            }.padding(.top, 25)
        }
    }
}
