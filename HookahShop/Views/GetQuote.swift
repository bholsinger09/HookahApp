//
//  GetQuote.swift
//  HookahShop
//
//  Created by Ben Holsinger on 3/26/23.
//

import SwiftUI

struct QuoteForm: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var question: String = ""
    
    private let backendURL = "https://hookahsite-backend.herokuapp.com"
    
    var body: some View {
        VStack {
            Text("Quote Help Form")
                .font(.title)
                .padding(.top, 16)
            
            Text("Please provide your Name, Contact Email, and what products you would like more information about in this form :")
                .padding(.top, 8)
            
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 16)
            
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 16)
            
            TextField("What products would you like to know more about?", text: $question)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 16)
            
            Button("Submit") {
                submitForm()
            }
            .padding(.top, 16)
            .padding(.horizontal, 16)
        }
    }
    
    private func submitForm() {
        let customerData = ["name": name, "email": email, "question": question]
        guard let url = URL(string: backendURL) else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: customerData, options: [])
            request.httpBody = jsonData
        } catch {
            print("Error serializing customer data: \(error.localizedDescription)")
        }
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard error == nil else {
                print("Error submitting form: \(error!.localizedDescription)")
                return
            }
            
            if let responseData = data, let responseString = String(data: responseData, encoding: .utf8) {
                print("Form submitted successfully: \(responseString)")
            }
        }.resume()
        
        clearForm()
    }
    
    private func clearForm() {
        name = ""
        email = ""
        question = ""
    }
}
