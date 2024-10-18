//
//  Appetizers.swift
//  Appetizers
//
//  Created by Minata on 13/08/2024.
//

import Foundation

struct Appetizers: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizers]
}

struct MockData {
    static let sampleAppetizer = Appetizers(
        id: 0001,
        name: "Test Appetizer",
        description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 88,
        carbs: 77
    )
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let sampleOne = Appetizers(
        id: 0001,
        name: "Test Appetizer One",
        description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 88,
        carbs: 77
    )
    
    static let sampleTwo = Appetizers(
        id: 0002,
        name: "Test Appetizer Two",
        description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 88,
        carbs: 77
    )
    
    static let sampleThree = Appetizers(
        id: 0003,
        name: "Test Appetizer Three",
        description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 88,
        carbs: 77
    )
    
    static let sampleAppetizers = [sampleOne, sampleTwo, sampleThree]
}
