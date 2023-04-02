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
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                NavigationLink(
                    destination: Text("Destination View"),
                    label: {
                        Text("Get Directions")
                            .font(.title)
                            .foregroundColor(.red)
                            .padding(.top, 16)
                    })
                MapView()
                    .frame(height: 300)
            }
            .padding(10)
        }
    }
}

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {}
}
