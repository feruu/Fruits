//
//  OnboardingView.swift
//  Fructus
//
//  Created by Feruza Yuldasheva on 16/04/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: -PROPERTIES
    var fruits: [Fruit] = fruitsData
    // MARK: BODY
    var body: some View {
        TabView{
            ForEach(fruits [0...10] ){
                item in
                
                FruidCardView(fruit: item)
            }//:LOOP
           
            
        } //:TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}
//MARK: PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
            .previewDevice("iPhone 14 Pro")
    }
}
