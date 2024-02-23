
import SwiftUI

struct ProfileChange: View {
    @State private var isPopoverPresented = false
    @State private var selectedImage: String? = "1"

        var body: some View {
            VStack {
                Button(action: {
                    // Toggle the popover
                    selectedImage = nil
                }) {
                    Image(selectedImage ?? "1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 38, height: 38)
                        .clipShape(Circle())
                }
                .popover(isPresented: Binding(
                    get: { selectedImage == nil },
                    set: { _ in selectedImage = nil }
                )) {
                    ImageSelect(selectedImage: $selectedImage)
                }
            }
        }
}

struct ImageSelect: View {
    @Binding var selectedImage: String?

    var body: some View {
        ScrollView {
            ForEach(1 ... 4, id: \.self) { index in
                Image("\(index)")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 38, height: 38)
                    .clipShape(Circle())
                    .onTapGesture {
                        selectedImage = "\(index)"
                    }
                Text("Алиса лет")
            }
        }
        
        .padding()
    }
}

#Preview {
    ProfileChange()
}
