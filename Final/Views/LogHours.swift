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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct LogHours_Previews: PreviewProvider {
    static var previews: some View {
        LogHours(viewRouter: ViewRouter())
    }
}
