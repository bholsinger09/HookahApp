//
//  originStory.swift
//  HookahShop
//
//  Created by Ben Holsinger on 3/26/23.
//

import SwiftUI

struct OriginStory: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Our Origins")
                .font(.title)
                .fontWeight(.bold)
                .id("originsTitle")
            Text("HOOKAH HOUSE TOBACCO DISTRIBUTION LLC is a trendsetting online store, offering our first-rate products and exceptional customer service to shoppers from the comfort of their own homes. We’re a business made up of innovators and forward-thinkers, with the drive and wherewithal to constantly update and improve the online shopping experience")
                .font(.body)
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
                .id("originsPar1")
        }
    }
}
