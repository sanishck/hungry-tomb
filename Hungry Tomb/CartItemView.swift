//
//  CartItemView.swift
//  Hungry Tomb
//
//  Created by Sanish C.K. on 01/03/2023.
//

import SwiftUI

struct CartItemView: View {
    @State var trendingMeal : Card
    var body: some View {
        VStack {
            Image(trendingMeal.image)
                .resizable()
                .frame(height: 250)
            
            HStack {
                Text(trendingMeal.title)
                    .font(.title2).bold()
                    .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Spacer()
                Image(systemName: "trash")
            }
            
            HStack {
                Text("Payable Amount")
                    .bold()
                Spacer()
                Text(trendingMeal.price)
                    .font(.subheadline)
                    .bold()
            }
            .padding(.bottom, 30)
            .padding(.leading, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .padding(.trailing, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
        }
        .cornerRadius(10)
        .padding(.all)
//        .frame(width: 250, height: 250)
        
        
    }
}

struct CartItemView_Previews: PreviewProvider {
    static var previews: some View {
        CartItemView(trendingMeal: TrendingCard[0])
    }
}
