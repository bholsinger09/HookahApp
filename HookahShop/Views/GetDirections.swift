//
//  GetDirections.swift
//  HookahShop
//
//  Created by Ben Holsinger on 3/26/23.
//

import SwiftUI
import MapKit

struct GetDirections: View {
    var body: some View {
        VStack {
            Text("Get Directions")
                .font(.title)
                .padding(.top, 16)
            MapView()
                .frame(height: 300)
        }
    }
}

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {}
}

