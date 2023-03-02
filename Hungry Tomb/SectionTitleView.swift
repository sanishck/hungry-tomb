//
//  SectionTitleView.swift
//  food
//
//  Created by Abu Anwar MD Abdullah on 25/1/21.
//

import SwiftUI

struct SectionTitleView: View {
    let title: String
    let isViewAll: Bool

    var body: some View {
        HStack {
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
            
            Spacer()
            
            Text(isViewAll ? "View All" : "")
                .foregroundColor(Color("PrimaryColor"))
                .onTapGesture {
                    
                }
        }
    }
}
