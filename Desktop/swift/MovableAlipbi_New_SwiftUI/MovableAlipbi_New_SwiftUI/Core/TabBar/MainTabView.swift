import SwiftUI

struct MainTabView: View {
    @State private var selectedLink: String? = nil
    @State private var isMainPageActive: Bool = false
    
    var body: some View {
        
        
        NavigationView {
            GeometryReader{ geometry in
                ZStack{
                    LinearGradient(
                        gradient: Gradient(colors: [Color(hex: 0xD9E6FF), Color(hex: 0xFEC498)]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                    .edgesIgnoringSafeArea(.all)
                    
                    VStack(alignment: .leading, spacing: 0) {
                        //title
                        Text("Movable Alipbi")
                            .textCase(.none)
                            .font(.title)
                            .bold()
                            .foregroundColor((Color(hex: 0x8fb108)))
                        
                        NavigationLink(
                            destination: MainPageView(),
                            tag: "Main Page",
                            selection: $selectedLink,
                            label: {
                                Label("басты бет", systemImage: "house")
                                    .foregroundColor(selectedLink == "Main Page" ? Color(hex: 0x8fb108) : .primary)
                                    .padding()
                            }
                        )
                        
                        NavigationLink(
                            destination: InfoPageView(),
                            tag: "Information",
                            selection: $selectedLink,
                            label: {
                                Label("ақпараттар", systemImage: "face.smiling")
                                    .foregroundColor(selectedLink == "Information" ? Color(hex: 0x8fb108) : .primary)
                                    .padding()
                            }
                        )
                        
                        NavigationLink(
                            destination: AnalysisPageView(),
                            tag: "Analysis",
                            selection: $selectedLink,
                            label: {
                                Label("анализдер", systemImage: "chart.bar")
                                    .foregroundColor(selectedLink == "Analysis" ? Color(hex: 0x8fb108) : .primary)
                                    .padding()
                            }
                        )
                        //                    ExitView(shouldShowLogin: $shouldShowLogin)
                        //                        .offset(y: 500)
                        
                    }
                    .offset(x: -54, y: -200)
                }
                .navigationBarHidden(true)
                .frame(width: 386)
//                .frame(width: min(geometry.size.width, 250))
            }
        }
        .environment(\.font, Font.custom("Poppins", size: 18))
        .textCase(.uppercase)
    }
}

extension Color {
    init(hex: UInt) {
        self.init(
            .sRGB,
            red: Double((hex & 0xFF0000) >> 16) / 255.0,
            green: Double((hex & 0x00FF00) >> 8) / 255.0,
            blue: Double(hex & 0x0000FF) / 255.0,
            opacity: 1.0
        )
    }
}

#Preview {
    MainTabView()
}
