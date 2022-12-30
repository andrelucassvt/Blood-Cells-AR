//
//  AboutView.swift
//  Blood cells AR
//
//  Created by André  Lucas on 23/12/22.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView{
            Text(StringsApp.aboutProject)
                .padding()
            Text("Autores:")
                .font(.title)
                .fontWeight(.bold)
            HStack{
                CardAutor(
                    image: "andre",
                    autorName: "André Salvador",
                    jobName: "Desenvolvedor"
                )
                Spacer()
                CardAutor(
                    image: "thaissa",
                    autorName: "Thaissa Vitoria",
                    jobName: "Biomédica"
                )
            }
            .padding()
        }
        .navigationTitle("Sobre o projeto")
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
