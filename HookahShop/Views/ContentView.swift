
struct ContentView: View {
    @State private var posts = [Post]()

    var body: some View {
        NavigationView {
            VStack {
                NavBar()
                Header()
                HomeView()
            }
            .ignoresSafeArea()
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

struct NavBar: View {
    var body: some View {
        HStack {
            Button("Home") {
                // navigate to home page
            }
            Spacer()
            Button("Get Quote") {
                // navigate to get quote page
            }
            Spacer()
            Button("Get Directions") {
                // navigate to get directions page
            }
            Spacer()
            Button("Contact Us") {
                // navigate to contact us page
            }
        }
        .font(.title)
        .foregroundColor(.blue)
        .padding(.horizontal)
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

struct HomeView: View {
    var body: some View {
        VStack {
            Welcome()
            MainPictureBody()
            OriginStory()
        }
    }
}

struct Welcome: View {
    var body: some View {
        // implementation of Welcome component
        // ...
        Text("Welcome")
            .font(.title)
            .foregroundColor(.blue)
            .padding()
    }
}

struct MainPictureBody: View {
    var body: some View {
        // implementation of MainPic component
        // ...
        Text("Main Picture Body")
            .font(.title)
            .foregroundColor(.blue)
            .padding()
    }
}

struct OriginStory: View {
    var body: some View {
        // implementation of OriginStory component
        // ...
        Text("Origin Story")
            .font(.title)
            .foregroundColor(.blue)
            .padding()
    }
}

struct Post: Codable, Identifiable {
    let id: Int
    let title: String
    let body: String
}
