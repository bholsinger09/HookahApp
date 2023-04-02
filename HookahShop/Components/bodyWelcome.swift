//
//  bodyWelcome.swift
//  HookahShop
//
//  Created by Ben Holsinger on 3/26/23.
//

import SwiftUI

struct Welcome: View {
    var body: some View {
        VStack {
            Text("Welcome to the Grocery & Hookah house!")
                .font(.title)
                .id("welcome")
            Text("Come to visit our store, we carry the very best shisha, hookah, tobacco, and vape products.")
                .id("introductionProducts")
            Text("Come see our new Grocery products such as a variety of Tea and Coffee.")
                .id("introductionGrocery")
            HStack {
                Text("Check our customers review on google here:")
                Link("Click here", destination: URL(string: "https://www.yelp.com/biz/grocery-house-boise")!)
            }
            .id("introductionReview")
            Text("Free shipping for all Products to all US States")
                .id("introductionFreeShipping")
        }
        .padding()
        .foregroundColor(.black)
        .multilineTextAlignment(.center)
        .lineSpacing(5)
    }
}
