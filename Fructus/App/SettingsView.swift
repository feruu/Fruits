//
//  SettingsView.swift
//  Fructus
//
//  Created by Feruza Yuldasheva on 26/04/23.
//

import SwiftUI

struct SettingsView: View {
    // MARK: PROPERTIES
    
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK: BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing:20){
                    // MARK: SECTION 1
                    GroupBox(label:
                                SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical,4)
                        
                        HStack(alignment: .center, spacing: 10)
                            {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width:80, height: 80)
                                .cornerRadius(9)
                            Text("Most fructus are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                    .font(.footnote)
                        
                            
                        }//Hstack
                    }
                    // MARK: SECTION 2
                    GroupBox( label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    )
                    {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That may it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                    }
                    
                    // MARK: SECTION 3
                    GroupBox( label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                              
                    ){
                        
                        SettingsRowView(name: "Developer", content: "Feruza Yuldosheva")
                        SettingsRowView(name: "Designer", content: "Feru")
                        SettingsRowView(name: "Compatibility", content: "IOS 14")
                        SettingsRowView(name: "LinkedIN", linkLabel: "Ferus", linkDestination: "www.linkedin.com/in/feruza-yuldasheva-69a52b241")
                        SettingsRowView(name: "Instagram", linkLabel: "@ferusyaa", linkDestination: "instagram.com/ferusyaa")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    
                    }//Box
                    
                    
                    
                }//VSTACK
                .navigationBarTitle(Text("Settings"),displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button( action: { presentationMode.wrappedValue.dismiss()
                            
                        }) {
                            Image(systemName: "xmark")
                        }
                    )
                .padding()
            }//SCROLL
        } //NAVIGAtION
        
    }
}
//MARK: PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}



