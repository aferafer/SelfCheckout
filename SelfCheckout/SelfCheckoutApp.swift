//
//  SelfCheckoutApp.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-05-27.
//

import SwiftUI
import Foundation
import Firebase
import FirebaseFirestore

class AppInfo: ObservableObject {
    @Published var appState = "settingsPage" //3 states the app can be in. Settings Page is the first screen that pops up. Next is 'items page' where users can select their items. Finally clicking the checkout button brings you to the 'payments page' where you select credit, debit or cash to pay
}

@main
struct SelfCheckoutApp: App {
    init() {
        FirebaseApp.configure()
        /*
        let settings = Firestore.firestore().settings
        settings.host = "localhost:8080"
        settings.isPersistenceEnabled = false
        settings.isSSLEnabled = false
        Firestore.firestore().settings = settings
         */
    }
    @StateObject var cartClass = CheckoutClass()
    @ObservedObject var currentState = AppInfo()
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
            if (currentState.appState == "cardThankyouPage") { //view changes back to items page automatically after a few seconds
                cardThankyouView().onAppear {
                    Timer.scheduledTimer(withTimeInterval: 15, repeats: false) { timer in
                        withAnimation(.easeInOut(duration: 0)) {
                            print("switch")
                            currentState.appState = "itemsPage"
                        }
                    }
                }
            }
            if (currentState.appState == "cashThankyouPage") { //view changes back to items page automatically after a few seconds
                cashThankyouView().onAppear {
                    Timer.scheduledTimer(withTimeInterval: 15, repeats: false) { timer in
                        withAnimation(.easeInOut(duration: 0)) {
                            print("switch")
                            currentState.appState = "itemsPage"
                        }
                    }
                }
            }
        } //close windows group
    }
}
