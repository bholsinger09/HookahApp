//
//  HomeViewModel.swift
//  HookahShop
//
//  Created by Ben Holsinger on 1/6/24.
//

//import Foundation
//
//class HomeViewModel: ObservableObject {
//    @Published var posts = [Post]()
//    
//    func loadPosts() {
//        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
//            return
//        }
//        URLSession.shared.dataTask(with: url) { data, response, error in
//            if let data = data {
//                if let decodedResponse = try? JSONDecoder().decode([Post].self, from: data) {
//                    DispatchQueue.main.async {
//                        self.posts = decodedResponse
//                    }
//                    return
//                }
//            }
//            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
//        }.resume()
//    }
//}
