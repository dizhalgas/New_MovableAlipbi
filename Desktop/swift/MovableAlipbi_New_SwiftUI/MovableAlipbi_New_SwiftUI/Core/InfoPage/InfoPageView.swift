
import SwiftUI

struct InfoPageView: View {
    var body: some View {
        VStack{
            DescriptionView()
                .padding(.bottom, 40)
            VStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color(hex: 0xD9E6FF), Color(hex: 0xFEC498)]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        ))
                    .frame(width: 680, height: 500)
                    .overlay(
                        ActivityView()
                    )
            }
            .padding(.bottom, 100)
        }
    }
}

#Preview {
    InfoPageView()
}
