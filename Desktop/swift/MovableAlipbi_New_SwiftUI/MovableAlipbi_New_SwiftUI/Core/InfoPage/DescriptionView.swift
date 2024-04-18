
import SwiftUI

struct DescriptionView: View {
    let imageData = [
        (name: "1", label: "Тәтті бәліштер", subLabel: "Жылдамдық"),
        (name: "2", label: "Шарлар", subLabel: "Қысым"),
        (name: "3", label: "Cүңгуір қайық", subLabel: "Тұрақтылық")
    ]
    
    @State private var selectedImage: String? = nil
    @State private var displayText: String = ""
    
    // Description based on subLabel
    private func getDescription(for subLabel: String) -> String {
        switch subLabel {
        case "Жылдамдық":
            return "Бұл ойынның мақсаты жас баланың қолының жылдамдығын арттыру. Экранда пайда болған тәтті бәліштердің өлшемдеріне қарай кішкентайынан бастап үлкеніне дейін сызық жүргізу керек. Сызықтарды тез жүргізу арқылы көптеген ұпай жинауға болады."
        case "Қысым":
            return "Бұл ойынның басты мақсаты жас баланы қолының қысым күшін басқаруға үйрету. Шарларды кедергілерден өткізу үшін экранды белгілі бір қысым күшімен басу керек. Осы ойынды ойнау арқылы жас бала өз қолының қысым күшін басқаруға үйренеді."
        case "Тұрақтылық":
            return "Бұл ойынның басты мақсаты жас баланың қолының тұрақтылығын қалыптастыру. Сүңгуір қайықты саусағының ұшымен басқара отырып, көптеген кедергілерден(миналар) қашу арқылы қолының тұрақтылығын жаттықтырады. Кедергілердің ішінде орналасқан жұлдыздарды жинау арқылы көптеген ұпайлар жинауға болады."
        default:
            return ""
        }
    }
    
    var body: some View {
        VStack{
            HStack(spacing: 30) {
                ForEach(imageData, id: \.name) { item in
                    Button(action: {
                        self.selectedImage = item.name
                        self.displayText = getDescription(for: item.subLabel)
                    }) {
                        Image(item.name)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                }
            }
            // Display the text below the HStack of images
            if let selectedImage = selectedImage {
                VStack{
                    Text(imageData.first(where: { $0.name == selectedImage })?.label ?? "")
//                        .font(.headline)
                        .font(.custom("Poppins", size: 24))
                        .bold()
                    Text(displayText)
                        .font(.custom("Poppins", size: 17))
                            .multilineTextAlignment(.leading) // Align text in the center of its own frame
                            .frame(width: 550, height: 130)
                            .transition(.opacity)
                            .animation(.default, value: selectedImage)
    
                }
            }
        }
    }
}

#Preview {
    DescriptionView()
}
