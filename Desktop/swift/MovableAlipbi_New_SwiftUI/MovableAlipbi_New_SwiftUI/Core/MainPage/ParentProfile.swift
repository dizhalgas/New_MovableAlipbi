
import SwiftUI

struct ParentProfile: View {
    @State private var isPopoverPresented = false
    
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
                .frame(width: 202, height: 74)
                .overlay(
                    HStack{
                        Text("БАКДАУЛЕТ")
                            .font(.custom("Poppins", size: 16))
                            .bold()
                            .foregroundColor(Color(hex: 0x8FB108))
                        
//                        ProfileChange()
                    }
                )
        }
    }
}

#Preview {
    ParentProfile()
}
