
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
                    .edgesIgnoringSafeArea(.top)
                    .frame(width: 590, height: 480)
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
                    .frame(width: 590, height: 500)
                    .overlay(
                        AnalysisTable()
                            .frame(width: 500, height: 480)
                        , alignment: .top
                    )
                    .edgesIgnoringSafeArea(.bottom)
            }
            
            CalendarView()
        }
    }
}

#Preview {
    AnalysisPageView()
}
