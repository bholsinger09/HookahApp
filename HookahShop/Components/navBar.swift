//
//  NavBar.swift
//  HookahShop
//
//  Created by Ben Holsinger on 3/26/23.
//

import SwiftUI


struct NavBar: View {
    let navButtonFontSize: CGFloat = 14.0

    var body: some View {
        VStack(spacing: 0) {
            Text("Hookah Grocery Shop")
                .font(.custom("AmericanTypewriter", size: 16).relativeTo(.body))
                .foregroundColor(Color("RubyRed"))
                .padding(.vertical, 4)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .foregroundColor(.white)
            Divider()
            HStack {
                NavigationLink(destination: ContentView()) {
                    Text("Home")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.system(size: navButtonFontSize))
                        .padding()
                }
                NavigationLink(destination: QuoteForm()) {
                    Text("Get a quote")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.system(size: navButtonFontSize))
                        .padding()
                }
                NavigationLink(destination: ContactUs()) {
                    Text("Contact Us")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.system(size: navButtonFontSize))
                        .padding()
                }
                NavigationLink(destination: GetDirections()) {
                    Text("Get Directions")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.system(size: navButtonFontSize))
                        .padding()
                }
            }
            Spacer()
        }
        .padding(.horizontal)
    }
}
