
import SwiftUI

struct AnalysisPageView: View {
    var body: some View {
        HStack{
            VStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color(hex: 0xD9E6FF), Color(hex: 0xFEC498)]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        ))
                    .frame(width: 544, height: 450)
                    .overlay(
                        UpperAnalysis()
                    )
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color(hex: 0xD9E6FF), Color(hex: 0xFEC498)]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        ))
                    .frame(width: 544, height: 370)
                    .overlay(
                        AnalysisTable()
                            .frame(width: 500, height: 322)
                        , alignment: .top
                    )
            }
            
            CalendarView()
        }
    }
}

#Preview {
    AnalysisPageView()
}
