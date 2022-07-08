//
//  paymentsPage.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-07-06.
//

import SwiftUI
import Foundation
import SquarePointOfSaleSDK

struct PaymentsPage: View {
    @ObservedObject var appState: AppState
    @ObservedObject var myCart: CheckoutClass
    var body: some View {
        VStack {
            paymentsPageBar(appState: appState)
            Spacer()
            Text("How would you like to pay today?")
            Spacer()
            HStack {
                Spacer()
                VStack {
                    VStack() {
                        Image("credit")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 140, height: 90)
                        Text("credit").foregroundColor(.black)
                    }.background(Rectangle().fill(Color.white).shadow(radius: 2))
                    Text("(3.5% Surcharge)").bold().offset(y:10)
                }.offset(y:10).onTapGesture {
                    print("before: " + String(myCart.totalPrice))
                    myCart.totalPrice = myCart.totalPrice * 1.035
                    print("after: " + String(myCart.totalPrice))
                    makePayment()
                }
                Spacer()
                VStack() {
                    Image("interac")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 140, height: 90)
                    Text("debit").foregroundColor(.black)
                }.background(Rectangle().fill(Color.white).shadow(radius: 2)).onTapGesture {
                    makePayment()
                }
                Spacer()
                VStack() {
                    Image("cash")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 140, height: 90)
                    Text("cash").foregroundColor(.black)
                }.background(Rectangle().fill(Color.white).shadow(radius: 2)).onTapGesture {
                    appState.appState = "cashPage"
                }
                Spacer()
            }.offset(y:-60)
            Spacer()
        }
    }
    
    func makePayment() {
        let purchaseString = createPurchaseString()
        var dollarAmount = Double(myCart.totalPrice)
        var centAmount = Int(dollarAmount*100)
        //myCart.totalPrice = 0 //reset total
        //myCart.cartObjects = [] //empty cart
                // Replace with your app's URL scheme.
        let callbackURL = URL(string: "SelfCheckout://")!
                // Your client ID is the same as your Square Application ID.
                // Note: You only need to set your client ID once, before creating your first request.
        SCCAPIRequest.setApplicationID("sq0idp-LoMFQygUZp-dJvfaO2EN4w")
        do {
            // Specify the amount of money to charge.
            let money = try SCCMoney(amountCents: centAmount, currencyCode: "CAD")
            print("new transaction made")
            // Create the request.
            let apiRequest =
                try SCCAPIRequest(
                    callbackURL: callbackURL,
                    amount: money,
                    userInfoString: nil,
                    locationID: nil,
                    notes: purchaseString,
                    customerID: nil,
                    supportedTenderTypes: .card,
                    clearsDefaultFees: false,
                    returnsAutomaticallyAfterPayment: true,
                    disablesKeyedInCardEntry: true,
                    skipsReceipt: true
                )
            // Open Point of Sale to complete the payment.
            try SCCAPIConnection.perform(apiRequest)
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    } //close function
    
    //creates string that contains data from purchase to be sent to square and included in purchase notes section
    func createPurchaseString() -> String {
        var purchaseString = "Purchase data: "
        for purchaseItem in myCart.cartObjects {
            purchaseString += String(purchaseItem.quantity) + " " + String(purchaseItem.cartName) + " ($" + String(format: "%.2f", Double(purchaseItem.price)! * Double(purchaseItem.quantity)) + ")" + ", "
        }
        return purchaseString
    }
}


