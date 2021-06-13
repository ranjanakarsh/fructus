//
//  FructusApp.swift
//  Fructus
//
//  Created by Ranjan Akarsh on 08/06/21.
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
        }
    }
}
