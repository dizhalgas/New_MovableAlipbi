
import SwiftUI

struct UpperView: View {
//    let kidProfilePosition: CGPoint = CGPoint(x: 348, y: 35.64)
//    let parentProfilePosition: CGPoint = CGPoint(x: 1052, y: 39.64)
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .fill(Color(hex: 0xF7F7F7))
                .frame(width: 860, height: 142)
                .overlay(
                    HStack(spacing: 390) {
                        KidProfile()
//                            .padding(.trailing, 380)
//                            .position(x:348, y: 35)
                        ParentProfile()
//                            .position(x: 460, y: 35)
                    }
                )
            
        }
    }
}

#Preview {
    UpperView()
}
