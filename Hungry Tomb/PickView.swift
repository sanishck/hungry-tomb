//
//  PickView.swift
//  Hungry Tomb
//
//  Created by Sanish C.K. on 01/03/2023.
//

import SwiftUI

struct PickView: View {
//    @State var data = TrendingCard
    @State var data: [Category]
    @State var hero: Bool
    var body: some View {
        VStack (alignment: .leading, spacing: 16) {
            SectionTitleView(title: "Our Picks", isViewAll: true)
            // Card View
            VStack(spacing: 100) {
                ForEach(0..<self.data.count){i in
                    GeometryReader{g in
                        OurPicks(card: self.$data[i], hero: self.$hero)
                            
                            .offset(y: self.data[i].taxable ? -g.frame(in: .global).minY : 0)
                            .opacity(self.hero ? (self.data[i].taxable ? 1 : 0) : 1)
                            .onTapGesture {
                                
                                withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0)){
                                    if !self.data[i].taxable{
                                        self.hero.toggle()
                                        self.data[i].taxable.toggle()
                                    }
                                }
                                
                            }
                        
                    }
                    // going to increase height based on taxable...
                    .frame(height: self.data[i].taxable ? UIScreen.main.bounds.height : 250)
                    .simultaneousGesture(DragGesture(minimumDistance: self.data[i].taxable ? 0 : 800).onChanged({ (_) in
                        
                        print("dragging")
                    }))
                }
                
                
            }
            
        }.padding(.top, 50)
        .padding(.bottom, 150)
    }
}

struct PickView_Previews: PreviewProvider {
    static var previews: some View {
        PickView(data: [Category(posDisplayCategoryID: 1, item: "Item", description: "ItemDes", taxable: true, imageUrl: "Lado", price: 19, id: 1)], hero: false)
    }
}
