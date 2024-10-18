//
//  AppetizerDetail.swift
//  Appetizers
//
//  Created by Minata on 14/08/2024.
//

import SwiftUI

struct AppetizerDetail: View {
    
    let appetizer: Appetizers
    @Binding var isShowingDetail: Bool 
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            VStack(spacing: 10) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .font(.caption)
                    .multilineTextAlignment(.center)
                    .padding()
                
                HStack(spacing: 40) {
                    NutriousInfo(nutriousName: "Calories", nutriousValue: "\(appetizer.calories)")
                    NutriousInfo(nutriousName: "Carbs", nutriousValue: "\(appetizer.carbs) g")
                    NutriousInfo(nutriousName: "Protein", nutriousValue: "\(appetizer.protein) g ")
                }
                .frame(width: 240)
                .padding()
                
            }
            
            Spacer()
            
            Button {
                order.add(appetizer)
                isShowingDetail = false
            } label: {
                Text("$ \(appetizer.price, specifier: "%.2f") - Add to Order")
            }
            .modifier(StandartButtonStyle())
            .padding(.bottom, 30)

        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .clipShape(.rect(cornerRadius: 12))
        .shadow(radius: 40)
        .overlay(
            Button {
                isShowingDetail = false
            } label: {
                XDismissButton()
            }, alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetail(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}
