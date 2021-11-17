//
//  ContentView.swift
//  Final
//
//  Created by Max Diess on 11/16/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        PageSwitch(viewRouter: ViewRouter())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
