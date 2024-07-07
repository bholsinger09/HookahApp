import SwiftUI

struct HomeView: View {
    init() {
        // Set navigation bar title color and font size
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor.purple,
            .font: UIFont.systemFont(ofSize: UIFont.systemFontSize * 0.5) // Set font size to 0.5em
        ]
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all) // Ensures the background color extends to the edges
                
                VStack(spacing: 10) {
                    Text("Welcome to the Grocery & Hookah House!")
                        .font(.system(size: UIFont.systemFontSize * 0.5)) // Set font size to 0.5em
                        .foregroundColor(.green) // Change text color to light green
                        .padding(.top, 20) // Add padding to the top

                    Spacer() // Add Spacer to push the text to the top

                    Header()
                        .padding(.top, 10) // Add padding to the top of the Header
                }
                .navigationBarTitle("Hookah Grocery Shop", displayMode: .inline)
                .foregroundColor(.purple) // Change text color to dark purple
                .navigationBarBackButtonHidden(true)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct Header: View {
    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 0) {
                Image("hookah")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width / 3, height: geometry.size.height)
                    .clipped() // Ensure the image is clipped to the frame size

                Image("groceries")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width / 3, height: geometry.size.height)
                    .clipped() // Ensure the image is clipped to the frame size

                Image("pipe")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width / 3, height: geometry.size.height)
                    .clipped() // Ensure the image is clipped to the frame size
            }
            .frame(height: geometry.size.height * 0.3) // Set a height relative to the parent view's height
            .padding(.top, 3) // Adjust the distance from the top
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity) // Ensure the header fills the available space
    }
}

