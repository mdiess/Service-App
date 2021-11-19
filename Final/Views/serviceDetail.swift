//
//  serviceDetail.swift
//  Final
//
//  Created by Max Diess on 11/16/21.
//

import SwiftUI

struct serviceDetail: View {
    var Service: services
    var body: some View {
        ScrollView {
            VStack {
                mapview(coordinate: Service.locationCoordinate)
                    .frame(height: 300)
                    .ignoresSafeArea(edges: .top)
                circleimage(image: Service.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                VStack(alignment: .leading) {
                    Text(Service.title)
                        .font(.title)
                        .foregroundColor(.red)
                    HStack {
                        Text(Service.place)
                            .font(.subheadline)
                        Spacer()
                        Text(Service.city)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    Divider()
                    Text("About \(Service.title)")
                        .font(.title2)
                    Text(Service.description)
                }
                .padding()
                Spacer()
            }
        }
    }
}

struct serviceDetail_Previews: PreviewProvider {
    static var previews: some View {
        serviceDetail(Service: Services[0])
        serviceDetail(Service: Services[1])
        serviceDetail(Service: Services[2])
    }
}
