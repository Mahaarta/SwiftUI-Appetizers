//
//  NutriousInfo.swift
//  Appetizers
//
//  Created by Minata on 15/08/2024.
//

import SwiftUI

struct NutriousInfo: View {
    
    let nutriousName: String
    let nutriousValue: String
    
    var body: some View {
        VStack(spacing: 5) {
            Text(nutriousName)
                .bold()
                .font(.caption)
            
            Text(nutriousValue)
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}

#Preview {
    NutriousInfo(nutriousName: "Nutrious", nutriousValue: "99.1")
}
