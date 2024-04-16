
import SwiftUI

struct BottomView: View {
    //Games info
    let imageData = [
        (name: "1", label: "Часики", subLabel: "Жылдамдық"),
        (name: "2", label: "Паучок", subLabel: "Қысым"),
        (name: "3", label: "Игры С Мячом", subLabel: "Жылдамдық"),
        (name: "4", label: "Имитация", subLabel: "Қысым")
    ]
    
    @State private var selectedButton: String?
    
    private func isSelected(_ buttonName: String) -> Bool {
        return selectedButton == buttonName
    }
    
    var body: some View {
        //2x2 games grid
        VStack{
            //Title
            VStack (alignment: .leading) {
                Text("  Ойындар")
                    .font(.custom("Poppins", size: 32))
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.black)
                
                
                //Categorization of games
                HStack(alignment: .firstTextBaseline){
                    ForEach([" Бәрі", "Жылдамдық", "Градус", "Тұрақтылық", "Қысым"], id: \.self) { buttonName in
                        Button(action: {
                            self.selectedButton = buttonName
                        }) {
                            Text(buttonName)
                                .padding()
                                .foregroundColor(self.isSelected(buttonName) ? .white : Color(hex: 0x8B16FF))
                        }
                        .background(self.isSelected(buttonName) ? Color(hex: 0x8fb108) : Color.white)
                        .cornerRadius(8)
                    }
                }
            }
            LazyVGrid(columns: [GridItem(.flexible(), spacing: 32), GridItem(.flexible(), spacing: 32)], spacing: 20) {
                ForEach(imageData, id: \.name) { item in
                    VStack{
                        Image(item.name)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 196, height: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        HStack{
                            VStack(alignment: .leading){
                                //Game name
                                Text(item.label)
                                    .bold()
                                    .font(.custom("Poppins", size: 12))
                                    .foregroundColor(Color(hex: 0x1E1E1E))
                                //Game category
                                Text(item.subLabel)
                                    .bold()
                                    .font(.custom("Poppins", size: 12))
                                    .foregroundColor(Color(hex: 0x8B16FF))
                            }
                            Spacer()
                            //Button for play
                            Button(action: {
                            }) {
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(.white)
                                    .frame(width: 89, height: 26)
                                    .overlay(
                                        Text("Ойнау")
                                            .font(.custom("Poppins", size: 12))
                                            .bold()
                                            .foregroundColor(Color(hex: 0x8fb108))
                                            .padding(10)
                                    )
                            }
                        }
                        .frame(width: 196, alignment: .leading)
                    }
                }
            }
            .padding(.horizontal, 196)
        }
        
    }
}

#Preview {
    BottomView()
}
