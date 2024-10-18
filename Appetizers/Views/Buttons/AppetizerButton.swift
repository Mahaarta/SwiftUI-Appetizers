//
//  AppetizerButton.swift
//  Appetizers
//
//  Created by Minata on 15/08/2024.
//

import SwiftUI

struct AppetizerButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.headline)
            .fontWeight(.bold)
            .frame(width: 240, height: 50)
            .foregroundStyle(.white)
            .background(.brandPrimary)
            .clipShape(.rect(cornerRadius: 12))
    }
}

#Preview {
    AppetizerButton(title: "Title Test")
}
