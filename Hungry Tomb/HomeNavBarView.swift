//
//  HomeNavBarView.swift
//  food
//
//  Created by Abu Anwar MD Abdullah on 25/1/21.
//

import SwiftUI

struct HomeNavBarView: View {
    var body: some View {
        HStack {
            Image(uiImage: #imageLiteral(resourceName: "menu"))
                .onTapGesture {
                    
                }
            Spacer()
            Text("Hungry Tomb")
                .font(.title).bold()
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 20)
            Spacer()
            
            Image(uiImage: #imageLiteral(resourceName: "notifications"))
                .onTapGesture {
                    
                }
            
        }
    }
}

struct HomeNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        HomeNavBarView()
    }
}
