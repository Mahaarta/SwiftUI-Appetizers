//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Minata on 16/08/2024.
//

import SwiftUI

struct StandartButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(BorderedButtonStyle.bordered)
            .controlSize(.large)
            .tint(.brandPrimary)
    }
    
}
