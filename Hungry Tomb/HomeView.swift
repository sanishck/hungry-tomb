//
//  HomeView.swift
//  Hungry Tomb
//
//  Created by Sanish C.K. on 01/03/2023.
//

import SwiftUI

struct HomeView: View {
    @State var hero = false
    @State private var search: String = ""
    @ObservedObject var viewModel = CategoryModelView()
    var body: some View {
        ScrollView (showsIndicators: false) {
            VStack (alignment: .leading, spacing: 16){
                HomeNavBarView()
                Text("Bonjour, C K")
                    .font(.caption)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("GrayColor"))
                
                Text("What would you like to eat today?")
                    .font(.title)
                    .fontWeight(.bold)
                
                SearchAndFilterView(search: $search)
                TrendDishes()
                CategoryView()
                PickView(data: viewModel.categories, hero: false)
               
            }
            .padding()
        }
    }
}


struct HomeView1_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
