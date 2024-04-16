//
//  UpperAnalysis.swift
//  MovableAlipbi_New_SwiftUI
//
//  Created by Dilyara Zhalgasbayeva on 2/29/24.
//

import SwiftUI

struct UpperAnalysis: View {
    let progressValues = [
        ("Қысым", 0.7, Color(hex: 0xFF522C)),
        ("Тұрақтылық", 0.5, Color(hex: 0x8FB108)),
        ("Жылдамдық", 0.8, Color(hex: 0x8B16FF)),
        ("Градус", 0.4, Color(hex: 0xFF166A))
    ]
    var body: some View {
        VStack(alignment: .leading) {
            // Title
            Text("Анализдер")
                .font(.title)
                .bold()
                .padding()
            HStack {
                // Text area with handwriting
                Text("The moon tonight\nbig and round\nthe white moonlight\nshines on the ground\nSo beautiful")
                    .frame(width: 254, height: 247)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 3)
                    
                // List of items with progress indicators
                VStack(alignment: .leading) {
                    ForEach(progressValues, id: \.0) { value in
                        HStack {
                            Text(value.0)
                            Spacer()
                            ProgressView(value: value.1)
                                .progressViewStyle(LinearProgressViewStyle(tint: value.2))
                                .frame(width: 100)
                            Image(systemName: "chevron.right")
                        }
                        .padding(.vertical, 4)
                    }
                }
                .frame(width: 200, height: 245)
                .padding()
                .background(Color.white)
                .cornerRadius(12)
                .shadow(radius: 3)
            }
            HStack{
                // Circular progress bar with label
                ZStack {
                    Circle()
                        .stroke(lineWidth: 20.0)
                        .opacity(0.3)
                        .foregroundColor(Color.orange)
                    Circle()
                        .trim(from: 0.0, to: 0.65)
                        .stroke(style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                        .foregroundColor(Color.orange)
                        .rotationEffect(Angle(degrees: 270.0))
                    
                    Text("65%")
                        .font(.custom("Poppins", size: 20))
                        .fontWeight(.semibold)
                }
                .frame(width: 67, height: 68)
                .padding()
                
                Text("Орташа көрсеткіш")
                    .font(.headline)
                    .padding(.bottom)
            }
        }
        .padding()
        .environment(\.font, Font.custom("Poppins", size: 18))

    }
}

#Preview {
    UpperAnalysis()
}
