//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Feruza Yuldasheva on 20/04/23.
//

import SwiftUI

struct FruitHeaderView: View {
    
    // MARK : - PROPERTIES
    
    
    var fruit: Fruit
    
    @State private var isAnimatImage : Bool = false
    
    //MARK :  - BODY
    
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing
            )
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0 , green: 0 , blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatImage ? 1.0 : 0.6)
        } //ZStack
        .frame(height:440)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)){
                isAnimatImage = true
            }
        }
    }
}

// MARK : - PREVIEW
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
