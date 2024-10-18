//
//  LoadingView.swift
//  Appetizers
//
//  Created by Minata on 14/08/2024.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(edges: .all)
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
                .tint(.brandPrimary)
                .scaleEffect(1.5)
        }
    }
}


#Preview {
    LoadingView()
}
