//
//  EmptyStates.swift
//  Appetizers
//
//  Created by Minata on 15/08/2024.
//

import SwiftUI

struct EmptyStates: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 140)
                
                Text(message)
                    .font(.callout)
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .offset(y: -60)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    EmptyStates(imageName: "empty-order", message: "You have no items in your order")
}
