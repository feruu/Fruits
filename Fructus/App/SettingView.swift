//
//  SettingView.swift
//  Fructus
//
//  Created by Feruza Yuldasheva on 20/04/23.
//

import SwiftUI

struct SettingView: View {
    
   
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20){
                    // MARK: - SECTION 1
                    GroupBox(label:
                                Text("Fructus".uppercased().frontWeight(.bold))
                    ){
                        HStack{
                            Text
                        }
                    }
                    
                 
                } //vstack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action:{presentationMode.wrappedValue.dismiss()
                    
                }){
                    Image (systemName: "xmark")
                })
                .padding()
            }// scroll
            
        }//Navigation
        
    }
}
    
   
    struct SettingView_Previews: PreviewProvider {
        static var previews: some View {
            SettingView()
        }
    }

