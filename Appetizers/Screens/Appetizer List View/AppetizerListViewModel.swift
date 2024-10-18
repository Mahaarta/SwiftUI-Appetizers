//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Minata on 13/08/2024.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizers] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading: Bool = false
    @Published var isShowingDetail: Bool = false
    @Published var selectedAppetizer: Appetizers?
    
    func getAppetizers() {
        isLoading = true
        
        Task {
            do {
                let fetchedAppetizers = try await NetworkManager.shared.getAppetizers()
                DispatchQueue.main.async {
                    self.appetizers = fetchedAppetizers
                    self.isLoading = false
                }
            }
            catch {
                DispatchQueue.main.async {
                    if let apError = error as? AppetizerError {
                        switch apError {
                        case .invalidData:
                            self.alertItem = AlertContext.invalidResponse
                        case .invalidURL:
                            self.alertItem = AlertContext.invalidURL
                        case .invalidResponse:
                            self.alertItem = AlertContext.invalidResponse
                        case .unableToComple:
                            self.alertItem = AlertContext.unableToComplete
                        }
                    } else {
                        self.alertItem = AlertContext.invalidResponse
                    }
                    
                    self.isLoading = false
                }
            }
        }
    }
}
