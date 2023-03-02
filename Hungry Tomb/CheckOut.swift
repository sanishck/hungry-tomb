//
//  CheckOut.swift
//  Food
//
//  Created by BqNqNNN on 7/14/20.
//

import SwiftUI

struct CheckOut: View {
    @State var data: [Card]
    var body: some View {
        ScrollView(showsIndicators: false, content: {
            VStack(alignment: .leading, spacing: 16){
                HStack {
                    SectionTitleView(title: "My Orders", isViewAll: false)
                        .bold()
                        .font(.title).padding(.leading)
                }
                VStack {
                    ForEach(data) { datum in
                        CartItemView(trendingMeal: datum)
                    }
                    
                }.padding(.leading)
            }
        })
    }
}

struct CheckOut_Previews: PreviewProvider {
    static var previews: some View {
        CheckOut(data: TrendingCard)
    }
}
