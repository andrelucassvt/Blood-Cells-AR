//
//  CellCardView.swift
//  Blood cells AR
//
//  Created by André  Lucas on 23/12/22.
//

import SwiftUI

struct CellCardView: View {
    var cellEntity: CellEntity
    var body: some View {
        
        NavigationLink(destination: DetailsView(cellEntity: cellEntity)){
            Image(cellEntity.photo)
                .resizable()
                .frame(height: 170)
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .overlay(
                    RoundedRectangle(cornerRadius: 20).stroke(Color.red, lineWidth: 1),
                    alignment: .center
                )
                .overlay(
                    HStack{
                        Spacer()
                        Text(cellEntity.name)
                            .foregroundColor(.black)
                            .font(.title)
                            .fontWeight(.bold)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                            .padding()
                    },
                    alignment: .bottomTrailing
                )
                .padding()
        }
    }
}

struct CellCardView_Previews: PreviewProvider {
    static var previews: some View {
        CellCardView(cellEntity: CellEntity(name: "Monócito", desc: "", photo: "monocito2", referenceObj: ""))
    }
}
