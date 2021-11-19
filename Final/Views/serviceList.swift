//
//  serviceList.swift
//  Final
//
//  Created by Max Diess on 11/16/21.
//

import SwiftUI

struct serviceList: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        ZStack {
            Color(red: 211/255, green: 211/255, blue: 211/255)
                .ignoresSafeArea()
            NavigationView {
                List(Services) { Service in
                    NavigationLink(destination: serviceDetail(Service: Service)) {
                        serviceRow(Service: Service)
                    }
                }
                .navigationTitle("Service Opportunities")
            }
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        viewRouter.currentPage = .page4
                    }) {
                        Image(systemName: "person.crop.circle")
                            .foregroundColor(.gray)
                            .font(.system(size: 30))
                            .padding(.trailing, 15)
                    }
                }
                Spacer()
            }
        }
    }
}

struct serviceList_Previews: PreviewProvider {
    static var previews: some View {
        serviceList(viewRouter: ViewRouter())
    }
}
