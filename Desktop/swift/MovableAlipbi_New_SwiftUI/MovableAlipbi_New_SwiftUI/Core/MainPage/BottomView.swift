
import SwiftUI

struct BottomView: View {
    //Games info
    let imageData = [
        (name: "1", label: "Тәтті бәліштер", subLabel: "Жылдамдық"),
        (name: "2", label: "Шарлар", subLabel: "Қысым"),
        (name: "3", label: "Cүңгуір қайық", subLabel: "Тұрақтылық")
    ]
    
    @State private var selectedButton: String = "Бәрі"
    
    private func isSelected(_ buttonName: String) -> Bool {
        return selectedButton == buttonName
    }
    
    var body: some View {
        //2x2 games grid
        VStack{
            //Title
            VStack (alignment: .leading) {
                Text(" Ойындар")
                    .font(.custom("Poppins", size: 32))
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.black)
                
                
                //Categorization of games
                HStack(alignment: .firstTextBaseline){
                    ForEach(["Бәрі", "Жылдамдық", "Тұрақтылық", "Қысым"], id: \.self) { buttonName in
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
            .padding(.vertical, 25)
            
            LazyVGrid(columns: [GridItem(.flexible(), spacing: 32), GridItem(.flexible(), spacing: 32)], spacing: 30) {
                ForEach(imageData.filter{
                    self.selectedButton == "Бәрі" || $0.subLabel == self.selectedButton
                }, id: \.name) { item in
                    VStack{
                        Image(item.name)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 220, height: 220)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        HStack{
                            VStack(alignment: .leading){
                                //Game name
                                Text(item.label)
                                    .bold()
                                    .font(.custom("Poppins", size: 14))
                                    .foregroundColor(Color(hex: 0x1E1E1E))
                                //Game category
                                Text(item.subLabel)
                                    .bold()
                                    .font(.custom("Poppins", size: 14))
                                    .foregroundColor(Color(hex: 0x8B16FF))
                            }
                            //Button for play
                            Button(action: {
                            }) {
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(.white)
                                    .frame(width: 89, height: 26)
                                    .overlay(
                                        Text("Ойнау")
                                            .font(.custom("Poppins", size: 14))
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
