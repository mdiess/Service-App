//
//  FinalApp.swift
//  Final
//
//  Created by Max Diess on 11/16/21.
//

import SwiftUI

@main
struct FinalApp: App {
    @StateObject var viewRouter = ViewRouter()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
