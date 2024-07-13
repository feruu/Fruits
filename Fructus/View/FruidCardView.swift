//
//  FruidCardView.swift
//  Fructus
//
//  Created by Feruza Yuldasheva on 16/04/23.
//

import SwiftUI

struct FruidCardView: View {
    // MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    var fruit: Fruit
    
    // MARK: - BODY
    
    // MARK: -
    var body: some View {
        ZStack {
            VStack(spacing: 20){
                //Fruit Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),radius: 8, x: 8, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                //Fruit Title
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                //Fruit Headline
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 490)
                
                //Button START
                StartButtonView()
            } // VStack
        } //ZStack
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)){isAnimating = true}
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
       
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
        
    }
}

// MARK: - PREVIEW

struct FruidCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruidCardView(fruit: fruitsData[11])
        
            .previewLayout(.fixed(width: 420, height: 840))
    }
}
