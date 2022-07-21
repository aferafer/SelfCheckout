//
//  CashView.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-07-07.
//

import SwiftUI
import SquarePointOfSaleSDK

struct CashView: View {
    @ObservedObject var appState: AppState
    @ObservedObject var myCart: CheckoutClass
    var body: some View {
        paymentsPageBar(appState: appState)
        Spacer()
        Text("Please deposit your cash in the cash box, making change for youself as needed. Please press the 'Confirm Purchase' button when you are done to record your purchase or press 'back' in the upper left hand corner to return to the previous screen.")
            .padding(.leading, 100)
            .padding(.trailing, 100)
        Spacer()
        Text("Your total is $" + String(format: "%.2f", myCart.totalPrice)).bold().font(.custom("San Francisco", size: 25)).offset(y: -50)
        Spacer()
        Button {
            appState.appState = "itemsPage"
        } label: {
            Text("Confirm Purchase")
                .padding(10)
                .foregroundColor(Color.black)
                .background(Color.accentColor)
                .cornerRadius(12)
        }.offset(y:-50)
        Spacer()
        
    }
}
