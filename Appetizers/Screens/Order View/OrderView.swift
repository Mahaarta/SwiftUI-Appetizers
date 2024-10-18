//
//  OrderView.swift
//  Appetizers
//
//  Created by Minata on 13/08/2024.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItem)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                    } label: {
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandartButtonStyle())
                    .padding(.bottom, 20)
                }
                
                if order.items.isEmpty {
                    EmptyStates(imageName: "empty-order", message: "You have no items in your order,\nplease add the appetizer")
                }
            }
             .navigationTitle("🧾 Orders")
        }
    }
}

#Preview {
    let mockOrder = Order()
    mockOrder.items = [Appetizers(id: 0, name: "Mock Appetizer", description: "Desc Appetizer", price: 90.0, imageURL: "", calories: 3, protein: 4, carbs: 5)]
    
    return OrderView()
        .environmentObject(mockOrder)
}
