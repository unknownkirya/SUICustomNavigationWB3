//
//  PushTransitionView.swift
//  SUICustomNavigationWB3
//
//  Created by Kirill on 21.07.2024.
//

import SwiftUI

struct PushTransitionView: View {
    
    @State private var showPresentView = false
    @EnvironmentObject private var navManager: NavigationManager
    
    var body: some View {
        ZStack {
            Color.purple
                .ignoresSafeArea()
            VStack {
                NavigationButton(title: "Present", action: { showPresentView.toggle() })
                if !navManager.screens.isEmpty {
                    BackToRootView(action: { navManager.returnToRoot() })
                }
            }
            .padding()
        }
        .presentNavigation(view: PresentTransitionView().eraseToAnyView(), isActive: showPresentView)
    }
    
}

#Preview {
    PushTransitionView()
}
