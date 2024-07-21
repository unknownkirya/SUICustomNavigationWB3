//
//  PresentTransitionView.swift
//  SUICustomNavigationWB3
//
//  Created by Kirill on 21.07.2024.
//

import SwiftUI

struct PresentTransitionView: View {
    
    @State private var showCustomView = false
    @EnvironmentObject private var navManager: NavigationManager
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            VStack {
                NavigationButton(title: "Custom", action: { showCustomView.toggle() })
                if !navManager.screens.isEmpty {
                    BackToRootView(action: { navManager.returnToRoot() })
                }
            }
            .padding()
        }
        .customNavigation(view: CustomTransitionView().eraseToAnyView(), isActive: showCustomView)
    }
    
}
