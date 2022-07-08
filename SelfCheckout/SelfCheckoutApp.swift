//
//  SelfCheckoutApp.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-05-27.
//

import SwiftUI

class AppState: ObservableObject {
    @Published var appState = "settingsPage" //3 states the app can be in. Settings Page is the first screen that pops up. Next is 'items page' where users can select their items. Finally clicking the checkout button brings you to the 'payments page' where you select credit, debit or cash to pay
}

@main
struct SelfCheckoutApp: App {
    @StateObject var cartClass = CheckoutClass()
    @ObservedObject var currentState = AppState()
    var body: some Scene {
        WindowGroup {
            if (currentState.appState == "itemsPage") {
                //ScrumsView(products: Products.productData, total: 0)
                //ChoiceView()
                NavigationView {
                    ProductsView(products: Products.productData, cartClass: cartClass, appState: currentState, total: 0)
                }.navigationViewStyle(StackNavigationViewStyle())
            }
            if (currentState.appState == "settingsPage") {
                AdminView(products: Products.productData, cartData: cartClass, Switch: currentState)
            }
            if (currentState.appState == "paymentsPage") {
                PaymentsPage(appState: currentState, myCart: cartClass)
            }
            if (currentState.appState == "cashPage") {
                CashView(appState: currentState, myCart: cartClass)
            }
        } //close windows group
    }
}
