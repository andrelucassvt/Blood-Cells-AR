//
//  HomeView.swift
//  Blood cells AR
//
//  Created by André  Lucas on 23/12/22.
//

import SwiftUI

struct HomeView: View {
    var viewModel = HomeViewModel()
    var body: some View {
        NavigationView{
            ScrollView{
                ForEach(viewModel.listCells){ data in
                    CellCardView(cellEntity: data)
                }
            }
            .navigationTitle("Blood cells AR")
            .toolbar{
                NavigationLink(destination: AboutView()){
                    Text("Sobre")
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
