import SwiftUI

struct ContentView: View {
    @State private var posts = [Post]()

    var body: some View {
        Navigation {
            VStack {
                Header()
                NavigationLink("Home", destination: Home())
                    .font(.title)
                    .foregroundColor(.black)
                NavigationLink("Get Quote", destination: GetQuote())
                    .font(.title)
                    .foregroundColor(.black)
                NavigationLink("Get Directions", destination: GetDirections())
                    .font(.title)
                    .foregroundColor(.black)
                NavigationLink("Contact Us", destination: ContactUs())
                    .font(.title)
                    .foregroundColor(.black)
                NavigationLink("Not Found", destination: NotFoundPage())
                    .font(.title)
                    .foregroundColor(.red)
            }
            .navigationTitle("My App")
            .padding()
        }
        .onAppear(perform: loadData)
    }

    func loadData() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode([Post].self, from: data) {
                    DispatchQueue.main.async {
                        self.posts = decodedResponse
                    }
                    return
                }
            }
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
}

struct Header: View {
    var body: some View {
        Text("Header")
            .font(.largeTitle)
            .foregroundColor(.blue)
            .padding()
    }
}

struct Home: View {
    var body: some View {
        Text("Home Page")
            .font(.title)
            .foregroundColor(.black)
            .padding()
    }
}

struct GetQuote: View {
    var body: some View {
        Text("Get Quote Page")
            .font(.title)
            .foregroundColor(.black)
            .padding()
    }
}

struct GetDirections: View {
    var body: some View {
        Text("Get Directions Page")
            .font(.title)
            .foregroundColor(.black)
            .padding()
    }
}

struct ContactUs: View {
    var body: some View {
        Text("Contact Us Page")
            .font(.title)
            .foregroundColor(.black)
            .padding()
    }
}

struct NotFoundPage: View {
    var body: some View {
        Text("Page Not Found")
            .font(.title)
            .foregroundColor(.red)
            .padding()
    }
}

struct Post: Codable, Identifiable {
    let id: Int
    let title: String
    let body: String
}
