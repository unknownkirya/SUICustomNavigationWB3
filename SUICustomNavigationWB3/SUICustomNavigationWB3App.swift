//
//  SUICustomNavigationWB3App.swift
//  SUICustomNavigationWB3
//
//  Created by Kirill on 21.07.2024.
//

import SwiftUI

@main
struct SUICustomNavigationWB3App: App {
    var body: some Scene {
        WindowGroup {
            MainView().environmentObject(NavigationManager())
        }
    }
}
