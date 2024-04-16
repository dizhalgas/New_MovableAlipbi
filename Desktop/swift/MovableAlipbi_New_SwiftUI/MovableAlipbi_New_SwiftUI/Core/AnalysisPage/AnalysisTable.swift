
import SwiftUI

struct AnalysisData: Identifiable {
    let id = UUID()
    let score: String
    let time: String
    let date: String
    let progress: CGFloat
}

struct AnalysisTable: View {
    // Sample data for the list
    let analysisData = [
        AnalysisData(score: "85/100", time: "16:35", date: "Aug 17, 2023", progress: 0.85),
        AnalysisData(score: "63/100", time: "12:07", date: "Aug 16, 2023", progress: 0.63),
        AnalysisData(score: "61/100", time: "15:42", date: "Aug 15, 2023", progress: 0.61),
        AnalysisData(score: "54/100", time: "10:02", date: "Aug 13, 2023", progress: 0.54),
        AnalysisData(score: "70/100", time: "09:20", date: "Aug 13, 2023", progress: 0.7),
        AnalysisData(score: "36/100", time: "21:07", date: "Aug 17, 2023", progress: 0.36)
    ]

    var body: some View {
        VStack(alignment: .leading){
            Text("Анализдер")
                .font(.title)
                .bold()
                .padding()
            
            List {
                ForEach(analysisData.indices, id:\.self) { index in
                    HStack {
                        Text(analysisData[index].score)
                            .bold()
                        Spacer()
                        Text(analysisData[index].time)
                        Spacer()
                        Text(analysisData[index].date)
                            .foregroundColor(Color(hex: 0xC1C1C1))
                    }
                    .listRowBackground(index % 2 == 0 ? Color(hex: 0xF2F2F2) : Color.white)
                }
            }
            .listStyle(InsetGroupedListStyle())
        }
        .environment(\.font, Font.custom("Poppins", size: 18))
        .padding(.top, 2)
    }
}



#Preview {
    AnalysisTable()
}
