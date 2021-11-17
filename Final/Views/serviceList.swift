//
//  serviceList.swift
//  Final
//
//  Created by Max Diess on 11/16/21.
//

import SwiftUI

struct serviceList: View {
    var body: some View {
        NavigationView {
            List(Services) { Service in
                NavigationLink(destination: serviceDetail(Service: Service)) {
                    serviceRow(Service: Service)
                }
            }
            .navigationTitle("Service Opportunities")
        }
    }
}

struct serviceList_Previews: PreviewProvider {
    static var previews: some View {
        serviceList()
    }
}
