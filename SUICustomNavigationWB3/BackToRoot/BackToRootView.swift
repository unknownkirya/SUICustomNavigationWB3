//
//  BackToRootView.swift
//  SUICustomNavigationWB3
//
//  Created by Kirill on 21.07.2024.
//

import SwiftUI

struct BackToRootView: View {
    
    let action: () -> Void
    
    var body: some View {
        HStack {
            Image(systemName: "arrow.left")
            Text("Back to Root")
        }
        .foregroundColor(.black)
        .onTapGesture(perform: action)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.green, Color.yellow]), startPoint: .leading, endPoint: .trailing)
        )
        .cornerRadius(5)
    }
    
}
