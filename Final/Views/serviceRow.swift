//
//  serviceRow.swift
//  Final
//
//  Created by Max Diess on 11/16/21.
//

import SwiftUI

struct serviceRow: View {
    var Service: services
    var body: some View {
        HStack {
            Service.image.resizable().frame(width: 50, height: 50)
            Text(Service.title)
            Spacer()
        }
    }
}

struct serviceRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            serviceRow(Service: Services[0])
            serviceRow(Service: Services[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
