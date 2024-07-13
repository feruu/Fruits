//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Feruza Yuldasheva on 20/04/23.
//

import SwiftUI

struct FruitDetailView: View {
    
    //  MARK: PROPERTIES
    var fruit: Fruit
    // MARK: BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20) {
                    // header
                    FruitHeaderView(fruit: fruit)
                    VStack( alignment: .leading, spacing: 20){
                        //title
                        
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRIENTS
                        FruitNutrientsView(fruit: fruit) //fruitnutrientsview file
                        
                        //SUBHEADING
                        Text("Learning more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //LINK
                        
                        SourceLinkView()
                            .padding(.top, 10) //tepaga 10ta ko'taradi
                            .padding(.bottom, 40)
                        
                    } // VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth:640, alignment: .center)
                }// Vstack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            } //: SCROLL
            .edgesIgnoringSafeArea(.top) // top of the picture would not be space 
        } // : NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

    // MARK: PREVIEW

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
