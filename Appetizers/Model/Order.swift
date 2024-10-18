//
//  Order.swift
//  Appetizers
//
//  Created by Minata on 15/08/2024.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetizers] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    func add(_ appetizer: Appetizers) {
        items.append(appetizer)
    }
    
    func deleteItem(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
    
}
