//
//  ContentView.swift
//  Fructus
//
//  Created by Feruza Yuldasheva on 15/04/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    @State private var isShowingSettings: Bool = false
    
    // MARK: BODY
    //Poblem in navigation link
    var body: some View {
        NavigationView {
            //Navigation
            List{
                ForEach(fruits.shuffled()) { item in
                    NavigationLink (destination: FruitDetailView(fruit: item)
                    ){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
                
                .navigationTitle("Fruits")
                .navigationBarItems(trailing:
                                        Button(
                                            action:
                                                { isShowingSettings = true })
                                    {
                    Image(systemName: "slider.horizontal.3")
                } //:Button
                    .sheet(isPresented: $isShowingSettings){
                        SettingsView()
                    }
                )
                
             //Navigation
                .navigationViewStyle(StackNavigationViewStyle())
        }
    }
    // MARK: - PREVIEW
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(fruits: fruitsData)
        }
    }
    
}
