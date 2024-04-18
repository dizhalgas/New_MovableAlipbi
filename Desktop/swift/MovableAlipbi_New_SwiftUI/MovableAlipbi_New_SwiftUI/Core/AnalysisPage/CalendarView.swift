
import SwiftUI

struct CalendarView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [Color(hex: 0xD9E6FF), Color(hex: 0xFEC498)]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                ))
            .frame(width: 440, height: 1115)
            .overlay(
                VStack (alignment: .center) {
                    Text("Профиль Ребенка")
                        .font(.title)
                        .bold()

                    Image("kidProfile") // Replace with your actual image name
                        .resizable()
                        .scaledToFill()
                        .frame(width: 197, height: 197)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color(hex: 0x8fb108), lineWidth: 4))
                        .padding(.top)

                    Text("Алия")
                        .font(.title)
                        .foregroundColor(Color(hex: 0x8fb108))
                        .bold()
                        .padding(.top, 8)

                    Text("7 лет")
                        .font(.subheadline)
                        .foregroundColor(Color(hex: 0x8fb108))
                        .padding(.bottom)

//                    // Here you would insert your calendar view
//                    // For simplicity, this example uses a placeholder VStack
//                    VStack {
//                        // Example of a calendar placeholder
//                        ForEach(0..<6) { _ in
//                            HStack {
//                                ForEach(0..<7) { _ in
//                                    Circle()
//                                        .stroke(Color.clear, lineWidth: 1) // Border for circle
//                                        .background(Circle().fill(Color.clear)) // Transparent fill
//                                        .frame(width: 30, height: 30)
//                                        .overlay(
//                                            ForEach(0..<31){
//                                                Text
//                                            }
//                                        )
//                                }
//                            }
//                        }
//                    }
//                    .padding()
                    
                    // Calendar placeholder with dates from 1 to 31
                    let daysInMonth = Array(1...31)
                    let columns = Array(repeating: GridItem(.flexible(), spacing: 8), count: 7)
                    
                    LazyVGrid(columns: columns, spacing: 8) {
                        ForEach(daysInMonth, id: \.self) { day in
                            Text("\(day)")
                                .frame(width: 48, height: 48)
                                .background(Circle().stroke(Color.clear, lineWidth: 1))
                        }
                    }
//                    .frame(width: 392, height: 381)
                    .padding()
                }
            )
        
        
    }
}

#Preview {
    CalendarView()
}
