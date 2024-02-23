
import SwiftUI

struct UpperView: View {
//    let kidProfilePosition: CGPoint = CGPoint(x: 348, y: 35.64)
//    let parentProfilePosition: CGPoint = CGPoint(x: 1052, y: 39.64)
    
    var body: some View {
        ZStack{
            KidProfile()
                .position(CGPoint(x: 80, y: 35.64))
            ParentProfile()
                .position(CGPoint(x: 1052, y: 39.64))
        }
//        .alignmentGuide(HorizontalAlignment.center) { d in
//                    d[HorizontalAlignment.center]
//        }
//        .alignmentGuide(VerticalAlignment.center) { d in
//            d[VerticalAlignment.center]
//        }
//        .overlay(
//            RoundedRectangle(cornerRadius: 0)
//            .fill(Color(hex: 0xF7F7F7))
//            .frame(width: 1033.35, height: 150)
////            .offset(x: 0, y: -360)
//            .padding()
//        )
////        .offset(x: 0, y: -140)
//        .padding()
        
    }
}

#Preview {
    UpperView()
}
