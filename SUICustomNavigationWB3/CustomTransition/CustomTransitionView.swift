//
//  CustomTransitionView.swift
//  SUICustomNavigationWB3
//
//  Created by Kirill on 21.07.2024.
//

import SwiftUI

struct CustomTransitionView: View {
    
    @State private var showPushView = false
    @EnvironmentObject private var navManager: NavigationManager
    
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()
            VStack {
                NavigationButton(title: "Push", action: { showPushView.toggle() })
                if !navManager.screens.isEmpty {
                    BackToRootView(action: { navManager.returnToRoot() })
                }
            }
            .padding()
        }
        .pushNavigation(view: PushTransitionView().eraseToAnyView(), isActive: showPushView)
    }
    
}
