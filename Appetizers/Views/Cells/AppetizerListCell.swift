//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Minata on 13/08/2024.
//

import SwiftUI

struct AppetizerListCell: View {
    
    let appetizer: Appetizers
    
    var body: some View {
        HStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .clipShape(.rect(cornerRadius: 8))
            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                
                Text("$ \(appetizer.price, specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
