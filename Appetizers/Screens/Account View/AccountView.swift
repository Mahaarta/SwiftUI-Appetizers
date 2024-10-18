//
//  AccountView.swift
//  Appetizers
//
//  Created by Minata on 13/08/2024.
//

import SwiftUI

private enum FormTextField {
    case firstName, lastName, email
}

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    @FocusState private var focusedState: FormTextField?
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $viewModel.user.firstName)
                        .focused($focusedState, equals: .firstName)
                        .onSubmit { focusedState = .lastName }
                        .submitLabel(.next)
                    
                    TextField("Last Name", text: $viewModel.user.lastName)
                        .focused($focusedState, equals: .lastName)
                        .onSubmit { focusedState = .email }
                        .submitLabel(.next)
                    
                    TextField("Email", text: $viewModel.user.email)
                        .focused($focusedState, equals: .email)
                        .keyboardType(.emailAddress)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                        .onSubmit { focusedState = nil }
                        .submitLabel(.continue)
                    
                    DatePicker("Birthday",
                        selection: $viewModel.user.birthDate,
                        in: Date().oneHundredTenYearsAgo...Date().eighttennYearsAgo,
                        displayedComponents: .date
                    )
                    
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }
                
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkin", isOn: $viewModel.user.extraNapkins)
                    Toggle("Frequent Refill", isOn: $viewModel.user.frequentRefill)
                }
                .tint(.brandPrimary)
            }
            .navigationTitle("🧐 Account")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Dismiss") {
                        focusedState = nil
                    }
                }
            }
            .onAppear {
                viewModel.retrieveUser()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
