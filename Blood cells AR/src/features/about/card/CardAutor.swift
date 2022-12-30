//
//  CardAutor.swift
//  Blood cells AR
//
//  Created by André  Lucas on 28/12/22.
//

import SwiftUI

struct CardAutor: View {
    var image: String
    var autorName: String
    var jobName: String
    var body: some View {
        VStack{
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(height: 150)
                .overlay(
                    Circle().stroke(Color.red, lineWidth: 4))
                .padding(.bottom)
            Text(autorName)
                .font(.title3)
                .fontWeight(.bold)
            Text(jobName)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
    }
}

struct CardAutor_Previews: PreviewProvider {
    static var previews: some View {
        CardAutor(
            image: "thaissa",
            autorName: "André Salvador",
            jobName: "Desenvolvedor"
        )
    }
}
