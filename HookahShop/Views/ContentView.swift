//
//  ContentView.swift
//  HookahShop
//
//  Created by Ben Holsinger on 3/19/23.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Header()
                NavigationLink(destination: HomeView()) {
                    Text("Home")
                }
                NavigationLink(destination: GetQuote()) {
                    Text("Get Quote")
                }
                NavigationLink(destination: GetDirections()) {
                    Text("Get Directions")
                }
                NavigationLink(destination: ContactUs()) {
                    Text("Contact Us")
                }
                NavigationLink(destination: NotFoundPage()) {
                    Text("Not Found")
                }
            }
            .navigationBarTitle(Text("My App"))
        }
    }
}

struct Header: View {
    var body: some View {
        Text("Header")
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

struct Home: View {
    var body: some View {
        Text("Home Page")
            .font(.title)
            .foregroundColor(.black)
    }
}

struct GetQuote: View {
    var body: some View {
        Text("Get Quote Page")
            .font(.title)
            .foregroundColor(.black)
    }
}

struct GetDirections: View {
    var body: some View {
        Text("Get Directions Page")
            .font(.title)
            .foregroundColor(.black)
    }
}

struct ContactUs: View {
    var body: some View {
        Text("Contact Us Page")
            .font(.title)
            .foregroundColor(.black)
    }
}

struct NotFoundPage: View {
    var body: some View {
        Text("Page Not Found")
            .font(.title)
            .foregroundColor(.red)
    }
}
