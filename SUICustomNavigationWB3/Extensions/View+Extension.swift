//
//  View+Extension.swift
//  SUICustomNavigationWB3
//
//  Created by Kirill on 21.07.2024.
//

import SwiftUI

extension View {
    
    func pushNavigation(view: AnyView, isActive: Bool) -> some View {
        modifier(NavigationModifier(view: view, isActive: isActive, transitionType: .push))
    }
    
    func presentNavigation(view: AnyView, isActive: Bool) -> some View {
        modifier(NavigationModifier(view: view, isActive: isActive, transitionType: .present))
    }
    
    func customNavigation(view: AnyView, isActive: Bool) -> some View {
        modifier(NavigationModifier(view: view, isActive: isActive, transitionType: .custom))
    }
    
    func eraseToAnyView() -> AnyView {
        AnyView(self)
    }
    
}
