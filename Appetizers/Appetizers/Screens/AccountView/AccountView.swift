//
//  AccountView.swift
//  Appetizers
//
//  Created by Robert  on 18.06.2024.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("First Name", text: $viewModel.user.firstName)
                    TextField("Last Name", text: $viewModel.user.lastName)
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                    
                    DatePicker("Birthday", selection: $viewModel.user.birthdate, displayedComponents: .date)
                    
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save changes")
                    }
                } header: {
                    Text("Personal Info")
                }
                
                
                Section(content: {
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                }, header: {
                    Text("Requests")
                })
                .tint(.brandPrimary)
            }
            .navigationTitle("💁🏻‍♂️ Account")
        }
        .onAppear {
            viewModel.retrieveUser()
        }
        .alert(isPresented: $viewModel.isShowingAlert, error: viewModel.errorItem) { _ in} message: { error in
            Text(error.failureReason)
        }
    }
}

#Preview {
    AccountView()
}
