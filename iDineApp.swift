//
//  iDineApp.swift
//  iDine
//
//  Created by WHGNR-1671 on 24/05/22.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    var body: some Scene {
        WindowGroup {
            MainView().environmentObject(order)
        }
    }
}
