//
//  MainView.swift
//  SUICustomNavigationWB3
//
//  Created by Kirill on 21.07.2024.
//

import SwiftUI

struct MainView: View {
    @State private var showPushView = false
    @State private var showPresentView = false
    @State private var showCustomView = false
    @EnvironmentObject private var navManager: NavigationManager
    
    var body: some View {
        NavigationContainer {
            CustomContentView()
        }
        .pushNavigation(view: PushContentView().eraseToAnyView(), isActive: showPushView)
        .presentNavigation(view: PresentContentView().eraseToAnyView(), isActive: showPresentView)
        .customNavigation(view: CustomContentView().eraseToAnyView(), isActive: showCustomView)
    }
}
