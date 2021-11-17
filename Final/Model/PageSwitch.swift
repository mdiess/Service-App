//
//  PageSwitch.swift
//  Final
//
//  Created by Max Diess on 11/16/21.
//

import SwiftUI

struct PageSwitch: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        switch viewRouter.currentPage {
        case .page1:
            LoginPage(viewRouter: viewRouter)
        case .page2:
            serviceList()
        case .page3:
            SignUpPage(viewRouter: viewRouter)
        }
    }
}

struct PageSwitch_Previews: PreviewProvider {
    static var previews: some View {
        PageSwitch(viewRouter: ViewRouter())
    }
}
