//
//  CheckoutView.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-06-01.
//

import SwiftUI
import SquarePointOfSaleSDK

struct CheckoutView: View {
    @ObservedObject var myCart: CheckoutClass
    let backgroundColor = Color(red: 102/255, green: 178/255, blue: 255/255)
    var body: some View {
        VStack {
            Text("Your Items")
                .underline()
            Divider()
            ScrollView {
                VStack {
                    ForEach(myCart.cartObjects) { item in
                        if (item.quantity > 0) {
                            HStack {
                                Text(String(item.quantity))
                                Text("·").bold().font(.custom("San Francisco", size: 25))
                                Text(item.name)
                                Spacer()
                                Text(String(format: "%.2f", Double(item.price)! * Double(item.quantity)))
                                Button {
                                    let findObject = CartObject.init(name: item.name, price: item.price, quantity: 0)
                                    myCart.cartObjects = myCart.cartObjects.filter { $0 != findObject }
                                    print("clear item not working")
                                }  label: {
                                    Text("x")
                                        .foregroundColor(Color.black)
                                        .bold()
                                        .font(.custom("San Francisco", size: 25))
                                        .offset(x: 0, y: -2)
                                }

                            }
                        }
                    }
                }
            }
            Spacer()
            HStack {
                Text("Your Total: ")
                Text("$" + String(format: "%.2f", myCart.totalPrice))
            }
            HStack {
                Button {
                    print("checkout")
                    makePayment()
                    
                } label: {
                    Text("Checkout")
                        .padding(10)
                        .foregroundColor(Color.black)
                        .background(Color.accentColor)
                        .cornerRadius(12)
                }
                Button {
                    myCart.cartObjects = []
                    myCart.totalPrice = 0
                } label: {
                    Text("Clear All")
                        .padding(10)
                        .foregroundColor(Color.black)
                        .background(Color.red)
                        .cornerRadius(12)
                }
            }
        }
        .background(backgroundColor)
        .padding(.top, 1)
    }
    func makePayment() {
        var dollarAmount = Double(myCart.totalPrice)
        var centAmount = Int(dollarAmount*100)
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
                            notes: "Food Purchase",
                            customerID: nil,
                            supportedTenderTypes: .all,
                            clearsDefaultFees: false,
                            returnsAutomaticallyAfterPayment: true,
                            disablesKeyedInCardEntry: true,
                            skipsReceipt: false
                        )
                    // Open Point of Sale to complete the payment.

                    try SCCAPIConnection.perform(apiRequest)
                } catch let error as NSError {
                    print(error.localizedDescription)
                }
            }
    }


struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView(myCart: CheckoutClass())
            .previewLayout(.fixed(width: 150, height: 400))
    }
}

