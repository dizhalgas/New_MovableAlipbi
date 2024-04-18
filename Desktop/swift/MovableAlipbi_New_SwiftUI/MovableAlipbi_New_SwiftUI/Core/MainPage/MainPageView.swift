import SwiftUI

struct MainPageView: View {
    var body: some View {
        //kid profile
        ZStack{
            UpperView()
                .edgesIgnoringSafeArea(.top)
                .padding(.bottom, 800)
            BottomView()
        }
        
        //parent profile
        
        //games label
        
        //games
    }
}

#Preview {
    MainPageView()
}
