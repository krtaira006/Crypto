//
//  ContentView.swift
//  SwiftCoin
//
//  Created by Keiichi Taira on 5/29/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                //top movers view
                TopMoversView(viewModel: viewModel)
                
                Divider()
                
                //all coin views
                AllCoinsView(viewModel: viewModel)
            }
            .navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
