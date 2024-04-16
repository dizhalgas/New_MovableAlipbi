//
//  DescriptionView.swift
//  MovableAlipbi_New_SwiftUI
//
//  Created by Dilyara Zhalgasbayeva on 2/29/24.
//

import SwiftUI

struct DescriptionView: View {
    let imageData = [
        (name: "1", label: "Часики", subLabel: "Жылдамдық"),
        (name: "2", label: "Паучок", subLabel: "Қысым"),
        (name: "3", label: "Игры С Мячом", subLabel: "Жылдамдық"),
        (name: "4", label: "Имитация", subLabel: "Қысым")
    ]
    
    @State private var selectedImage: String? = nil
    @State private var displayText: String = ""
    
    var body: some View {
        VStack{
            HStack(spacing: 20) {
                ForEach(imageData, id: \.name) { item in
                    Button(action: {
                        self.selectedImage = item.name
                        self.displayText = "\(item.subLabel) \(item.label)"
                    }) {
                        Image(item.name)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 173, height: 158)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                }
            }
            // Display the text below the HStack of images
            if let selectedImage = selectedImage {
                Text("\(displayText) \n Ойын жайлы ақпарат")
                    .multilineTextAlignment(.center) // Align text in the center of its own frame
                    .frame(maxWidth: .infinity)
                    .transition(.opacity)
                    .animation(.default, value: selectedImage)
            }
        }
    }
}

#Preview {
    DescriptionView()
}
