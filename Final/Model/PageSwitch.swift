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
            LoginPage(viewRouter: viewRouter, logincreds: logincreds[0])
        case .page2:
            serviceList(viewRouter: viewRouter)
        case .page3:
            SignUpPage(viewRouter: viewRouter)
        case .page4:
            ProfilePage(viewRouter: viewRouter)
        case .page5:
            LogHours(viewRouter: viewRouter)
        }
    }
}

struct PageSwitch_Previews: PreviewProvider {
    static var previews: some View {
        PageSwitch(viewRouter: ViewRouter())
    }
}
