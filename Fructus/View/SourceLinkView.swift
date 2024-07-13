//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Feruza Yuldasheva on 20/04/23.
//

import SwiftUI

struct SourceLinkView: View {
    
    // MARK: PROPERTIES
    
    // MARK: BODY
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https:/wikipedia.com")!)
                Image(systemName: "arrow.up.right.square") //wikipedia oldidegi ikonka
            }
            .font(.footnote) //light grey color
        }
    }
}


    //MARK: PREVIEW
    
    struct SourceLinkView_Previews:
        PreviewProvider {
    static var previews: some View {
            SourceLinkView()
                .previewLayout(.sizeThatFits)
                .padding()
        }
}

