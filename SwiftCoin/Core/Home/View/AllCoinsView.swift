//
//  AllCoinsView.swift
//  SwiftCoin
//
//  Created by Keiichi Taira on 5/29/23.
//

import SwiftUI

struct AllCoinsView: View {
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading){
            Text("All Coins")
                .font(.headline)
                .padding()
            
            HStack{
                Text("Coin")
                Spacer()
                Text("Price")
            }
            .foregroundColor(.gray)
            .font(.caption)
            .padding(.horizontal)
            
            ScrollView {
                VStack{
                    ForEach(viewModel.coins) { coin in
                        CoinRowView(coin: coin)
                    }
                }
            }
        }
        //padding()
    }
}

//struct AllCoinsView_Previews: PreviewProvider {
//    static var previews: some View {
//        AllCoinsView(viewModel: <#T##HomeViewModel#>)
//    }
//}
