//
//  SelfCheckoutApp.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-05-27.
//

import SwiftUI

@main
struct SelfCheckoutApp: App {
    @State var shouldI = false
    var body: some Scene {
        WindowGroup {
            NavigationView {
                //ScrumsView(scrums: DailyScrum.sampleData, total: 0)
                ChoiceView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}
