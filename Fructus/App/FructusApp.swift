//
//  FructusApp.swift
//  Fructus
//
//  Created by Feruza Yuldasheva on 15/04/23.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
            //OnboardingView()
        }
    }
}
