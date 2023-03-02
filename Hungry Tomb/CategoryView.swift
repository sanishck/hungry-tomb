//
//  CategoryView.swift
//  Hungry Tomb
//
//  Created by Sanish C.K. on 01/03/2023.
//

import SwiftUI

struct CategoryView: View {
    @State var hero = false
    var body: some View {
        //Categories
        VStack (alignment: .leading, spacing: 16) {
            // Categories View
            SectionTitleView(title: "Categories", isViewAll: false)
            HStack{
                ForEach(1 ..< 5) { i in
                    VStack {
                        Image("categ-\(String(i))")
                        Text(FoodTypes[Int(i)-1])
                            .font(.subheadline)
                            .bold()
                    }
                    .frame(width: 80, height: 100, alignment: .center)
                    .background(Color.white)
                    .cornerRadius(15)
                }
            }
            
            HStack(spacing: 10) {
                ForEach(3 ..< 7) { i in
                    VStack {
                        Image("categ-\(String(i))")
                        Text(FoodTypes[Int(i)-1])
                            .font(.subheadline)
                            .bold()
                    }
                    .frame(width: 80, height: 100, alignment: .center)
                    .background(Color.white)
                    .cornerRadius(15)
                }
            }
            
        }
        .shadow(radius: 1)
        .opacity(self.hero ? 0 : 1)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
