
import SwiftUI

struct KidProfile: View {
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(.white)
            .frame(width: 239, height: 74)
            .overlay(
                HStack{
                    VStack {
                        Group{
                            //lesson status
                            Text("урок начался")
                                .font(.custom("Poppins", size: 12))
                                .foregroundColor(Color(hex: 0x8FB108))
                            
                            //time passed
                            Text("прошло 17 мин.")
                                .font(.custom("Poppins", size: 10))
                                .foregroundColor(Color(hex: 0x434343))
                            
                            //stop button
                            HStack{
                                Button(action: {
                                    // to stop time
                                }) {
                                    RoundedRectangle(cornerRadius: 40)
                                        .fill(Color(hex: 0xFF7373))
                                        .frame(width: 42, height: 18)
                                        .overlay(
                                            Text("СТОП")
                                                .font(.custom("Poppins", size: 7))
                                                .bold()
                                                .foregroundColor(.white)
                                        )
                                }
                                
                                //pause button
                                Button(action: {
                                    // to pause time
                                }) {
                                    RoundedRectangle(cornerRadius: 40)
                                        .fill(Color(hex: 0xA4A4A4))
                                        .frame(width: 44, height: 18)
                                        .overlay(
                                            Text("ПАУЗА")
                                                .font(.custom("Poppins", size: 7))
                                                .bold()
                                                .foregroundColor(.white)
                                        )
                                }
                            }
                        }
                    }
                    VStack{
                        ProfileChange()
                    }
                }
            )
    }
}

#Preview {
    KidProfile()
}
