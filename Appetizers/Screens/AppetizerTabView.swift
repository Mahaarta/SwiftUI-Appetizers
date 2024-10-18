//
//  ContentView.swift
//  Appetizers
//
//  Created by Minata on 13/08/2024.
//

import SwiftUI

struct AppetizerTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem { Label("Home", systemImage: "house") }
            
            AccountView()
                .tabItem { Label("Account", systemImage: "person") }
            
            OrderView()
                .tabItem { Label("Order", systemImage: "bag") }
                .badge(order.items.count)
        }
        .accentColor(.brandPrimary)
    }
}

#Preview {
    let mockOrder = Order()
    mockOrder.items = [Appetizers(id: 0, name: "Mock Appetizer", description: "Desc Appetizer", price: 90.0, imageURL: "", calories: 3, protein: 4, carbs: 5)]
    
    return AppetizerTabView()
        .environmentObject(mockOrder)
}
