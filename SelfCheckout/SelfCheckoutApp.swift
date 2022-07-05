//
//  SelfCheckoutApp.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-05-27.
//

import SwiftUI

class AppState: ObservableObject {
    @Published var switchToMainApp = false
}

@main
struct SelfCheckoutApp: App {
    @StateObject var cartClass = CheckoutClass()
    @ObservedObject var switchViews = AppState()
    var body: some Scene {
        WindowGroup {
            if (switchViews.switchToMainApp) {
                //ScrumsView(products: Products.productData, total: 0)
                //ChoiceView()
                NavigationView {
                    ProductsView(products: Products.productData, cartClass: cartClass, total: 0)
                }.navigationViewStyle(StackNavigationViewStyle())
            } else {
                AdminView(products: Products.productData, cartData: cartClass, Switch: switchViews)
            }
        } //close windows group
    }
}
