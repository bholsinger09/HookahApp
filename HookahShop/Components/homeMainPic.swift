//
//  homeMainPic.swift
//  HookahShop
//
//  Created by Ben Holsinger on 3/26/23.
//

import SwiftUI

struct MainPictureBodyView: View {
    var body: some View {
        Image("MainPictureBody")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(maxWidth: .infinity)
            .id("mainPictureBody")
    }
}

