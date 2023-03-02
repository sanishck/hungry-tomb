//
//  OurPicks.swift
//  Food
//
//  Created by BqNqNNN on 7/14/20.
//

import SwiftUI

struct OurPicks: View {
    @Binding var card : Category
    @Binding var hero : Bool
    @State var heart = "heart.fill"
    var body: some View {
        VStack {
            ZStack {
                Image(card.imageUrl)
                    .resizable()
                    .frame(width: self.card.taxable ? (UIScreen.main.bounds.width) : (UIScreen.main.bounds.width)*0.9 , height: self.card.taxable ? (UIScreen.main.bounds.height)*0.3 : (UIScreen.main.bounds.height)*0.25 )
                    .cornerRadius(self.card.taxable ? 5 : 20)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                if (self.card.taxable) {
                    HStack{
                        Spacer()
                        Button(action: {
                            
                            withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0)){
                                
                                self.card.taxable.toggle()
                                self.hero.toggle()
                            }
                            
                        }) {
                            
                            Image(systemName: "xmark")
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.black.opacity(0.8))
                                .clipShape(Circle())
                            
                        }
                    }
                    .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
            }.edgesIgnoringSafeArea(.top)
            
            
            
            
            
            HStack {
                Text(card.item)
                    .bold()
                    .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            .padding(.leading, self.card.taxable ? 10 : 20)
            
            HStack {
                Text(card.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.leading, self.card.taxable ? 20 : 30)
                Spacer()
            }
            
            HStack {
                Spacer()
                Text("\(card.price)")
                    .font(.subheadline)
                    .bold()
            }
            .padding(.bottom, 30)
            .padding(.leading, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .padding(.trailing, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .padding(.leading, self.card.taxable ? 10 : 20)
            .padding(.trailing, self.card.taxable ? 10 : 20)
            
            
            
            
            if self.card.taxable {
                VStack{
                    HStack {
                        Text("Description")
                            .font(.title)
                            .bold()
                            .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        Spacer()
                        
                        Button(action: {
                            withAnimation(.spring(dampingFraction: 0.5)) {
                                heart = "heart"
                            }
                        }, label: {
                            Image(systemName: heart)
                                .font(.title)
                                .foregroundColor(.red)
                            
                        })
                        .padding(.trailing, 30)
                    }
                    Text("Nine years earlier, Lorem ipsum dolor sit amet,Morbi sed purus nulla. Curabitur dapibus ultrices lorem vitae tincidunt. Pellentesque quis arcu sit amet urna commodo porttitor. Aenean sit ")
                        .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
                
                
            }
            
            
            
        }
    }
}


