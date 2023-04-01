//
//  Home.sift.swift
//  HookahShop
//
//  Created by Ben Holsinger on 3/26/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            NavBarView()
            Spacer()
                .frame(height: 50) // equivalent to div with class "navMenu"
            WelcomeView()
            MainPicView()
            OriginStoryView()
        }
    }
}

struct NavBarView: View {
    var body: some View {
        // implementation of NavBar component
        // ...
    }
}

struct WelcomeView: View {
    var body: some View {
        // implementation of Welcome component
        // ...
    }
}

struct MainPicView: View {
    var body: some View {
        // implementation of MainPic component
        // ...
    }
}

struct OriginStoryView: View {
    var body: some View {
        // implementation of OriginStory component
        // ...
    }
}
