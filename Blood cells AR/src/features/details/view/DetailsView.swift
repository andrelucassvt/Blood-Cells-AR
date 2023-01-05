//
//  DetailsView.swift
//  Blood cells AR
//
//  Created by André  Lucas on 23/12/22.
//

import SwiftUI

struct DetailsView: View {
    
    @State private var showAr = false
    @Environment(\.openURL) var openURL
    var cellEntity: CellEntity
    
    var body: some View {
        ScrollView{
            Image(cellEntity.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(height: 230)
                .overlay(
                Circle().stroke(Color.red, lineWidth: 4))
            VStack(alignment: .leading){
                HStack{
                    Text(cellEntity.name)
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                    Button {
                        showAr = true
                    } label: {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 150, height: 50)
                            .overlay(
                                HStack{
                                    Image(systemName: "arkit")
                                        .foregroundColor(.white)
                                    Text("AR")
                                        .foregroundColor(.white)
                                        .fontWeight(.bold)
                                },
                                alignment: .center
                            )
                    }
                    .sheet(isPresented: $showAr){
                        ARQLView(cellEntity: cellEntity)
                            .onAppear(){
                                showAr = false
                            }
                    }
                }
                Text("Fonte:")
                    .foregroundColor(.gray)
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                
                Button(){
                    openURL(URL(string: cellEntity.fonte)!)
                } label: {
                    Text(cellEntity.fonte)
                        .multilineTextAlignment(.leading)
                }
                Text(cellEntity.desc)
                    .padding(.vertical)
            }
            .padding()
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(cellEntity: CellEntity(name: "Monócito", desc: StringsApp.loremImput, photo: "monocito2", referenceObj: "",fonte: "https://jlb.onlinelibrary.wiley.com/doi/10.1189/jlb.1RU1216-521R"))
    }
}
