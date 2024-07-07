//
//  GetDirections.swift
//  HookahShop
//
//  Created by Ben Holsinger on 3/26/23.
//


//import SwiftUI
//import MapKit
//
//struct GetDirections: View {
//    var body: some View {
//        ZStack {
//            Color.black
//                .ignoresSafeArea()
//            VStack {
//                NavigationLink(
//                    destination: Text("Destination View"),
//                    label: {
//                        Text("Get Directions")
//                            .font(.title)
//                            .foregroundColor(.red)
//                            .padding(.top, 16)
//                    })
//                MapKitView()
//                    .frame(height: 300)
//            }
//            .padding(10)
//        }
//    }
//}
//
//struct MapKitView: UIViewRepresentable {
//    func makeUIView(context: Context) -> MKMapView {
//        MKMapView(frame: .zero)
//    }
//
//    func updateUIView(_ uiView: MKMapView, context: Context) {}
//}



//struct MapView: UIViewRepresentable {
//    typealias UIViewType = MKMapView
//    
//    @State private var searchQuery: String = ""
//    private var center: CLLocationCoordinate2D {
//        CLLocationCoordinate2D(latitude: 40.756795, longitude: -73.954298)
//    }
//    
//    func makeUIView(context: Context) -> MKMapView {
//        let mapView = MKMapView()
//        mapView.showsUserLocation = true
//        mapView.userTrackingMode = .follow
//        mapView.delegate = context.coordinator
//        
//        let searchBox = configureSearchBox(context: context)
//        mapView.addSubview(searchBox)
//        
//        return mapView
//    }
//    
//    func updateUIView(_ mapView: MKMapView, context: Context) {
//        mapView.setCenter(center, animated: true)
//    }
//    
//    func makeCoordinator() -> Coordinator {
//        return Coordinator(mapView: self)
//    }
//    
//    private func configureSearchBox(context: Context) -> UIView {
//        let searchBox = UISearchController(searchResultsController: nil)
//        searchBox.searchResultsUpdater = context.coordinator
//        searchBox.obscuresBackgroundDuringPresentation = false
//        searchBox.searchBar.placeholder = "Type address here (our location: 10395 W Fairview Ave, Boise, ID 837040)"
//        if let searchBar = searchBox.searchBar.value(forKey: "searchField") as? UITextField {
//            searchBar.font = .systemFont(ofSize: 14)
//            searchBar.layer.cornerRadius = 3
//            searchBar.layer.borderWidth = 1
//            searchBar.layer.borderColor = UIColor.lightGray.cgColor
//        }
//        
//        let searchBarContainer = UIView()
//        searchBarContainer.addSubview(searchBox.searchBar)
//        searchBarContainer.frame = CGRect(x: 0, y: 0, width: 40 * UIScreen.main.bounds.width / 100, height: 40)
//        searchBarContainer.layer.shadowColor = UIColor.black.cgColor
//        searchBarContainer.layer.shadowOpacity = 0.3
//        searchBarContainer.layer.shadowOffset = .zero
//        searchBarContainer.layer.shadowRadius = 2
//        
//        return searchBarContainer
//    }
//    
//    class Coordinator: NSObject, UISearchResultsUpdating, MKMapViewDelegate {
//        var mapView: MapView
//        
//        init(mapView: MapView) {
//            self.mapView = mapView
//        }
//        
//        func updateSearchResults(for searchController: UISearchController) {
//            if let searchText = searchController.searchBar.text {
//                self.mapView.searchQuery = searchText
//            }
//        }
//    }
//}
