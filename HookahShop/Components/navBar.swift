//
//  NavBar.swift
//  HookahShop
//
//  Created by Ben Holsinger on 3/26/23.
//

import SwiftUI

struct NavBar: View {
    var body: some View {
        VStack {
            CompanyTitle()
            Divider()
            HStack {
                NavigationLink(destination: ContentView()) {
                    Text("Home")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                }
                NavigationLink(destination: QuoteView()) {
                    Text("Get a quote")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                }
                NavigationLink(destination: ContactUsView()) {
                    Text("Contact Us")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                }
                NavigationLink(destination: DirectionsView()) {
                    Text("Get Directions")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                }
            }
            Spacer()
        }
        .padding()
    }
}

struct CompanyTitle: View {
    var body: some View {
        Text("Company Title")
            .font(.title)
    }
}



struct QuoteView: View {
    var body: some View {
        Text("Quote View")
    }
}

struct ContactUsView: View {
    var body: some View {
        Text("Contact Us View")
    }
}

struct DirectionsView: View {
    var body: some View {
        Text("Directions View")
    }
}

