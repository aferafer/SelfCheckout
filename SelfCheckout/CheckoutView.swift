//
//  CheckoutView.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-06-01.
//

import SwiftUI
import SquarePointOfSaleSDK
import Combine

struct CheckoutView: View {
    @ObservedObject var myCart: CheckoutClass
    @State private var showAlert = false
    @State private var transactionError = false
    @State private var displayMessage = "no message"
    @Binding var productSearch: String
    @FocusState private var keyBoardIsFocused: Bool
    let backgroundColor = Color(red: 102/255, green: 178/255, blue: 255/255)
    var body: some View {
        VStack {
            Text("Your Items")
                .underline()
            Divider()
            HStack {
                Spacer()
                TextField("Product Search", text: $productSearch)
                    .focused($keyBoardIsFocused)
                    .frame(width: 200, height: 35)
                    .border(Color.black)
                    .onReceive(Just(productSearch)) { newValue in
                        let filtered = newValue.filter { "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ ".contains($0) }
                        if filtered != newValue {
                            self.productSearch = filtered
                        }
                        if (filtered == "") {
                            keyBoardIsFocused = false //if all text in search bar has been deleted then minimize keyboard
                        }
                    }
                Spacer()
            }
            ScrollViewReader { scrollView in
                ScrollView {
                    VStack {
                        ForEach($myCart.cartObjects) { $item in
                            if (item.quantity > 0) {
                                CheckoutObjectView(myCart: myCart, item: $item)
                                    .id(myCart.cartObjects.count)
                            }
                        }
                    }
                }
                .onChange(of: myCart.cartObjects) { _ in
                    print("count: " + String(myCart.cartObjects.count))
                    scrollView.scrollTo(myCart.cartObjects.count)
                }
                if (myCart.cartObjects.count > 17) {
                    Text("Display space exceeded. Scroll down to view new checkout items")
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
                    makePayment(purchaseString: createPurchaseString())
                    
                } label: {
                    Text("Checkout")
                        .padding(10)
                        .foregroundColor(Color.black)
                        .background(Color.accentColor)
                        .cornerRadius(12)
                }
                Button {
                    //print(myCart.isAvailable)
                    //print(myCart.cartObjects)
                    print(createPurchaseString())
                    myCart.cartObjects = []
                    myCart.totalPrice = 0
                } label: {
                    Text("Clear All")
                        .padding(10)
                        .foregroundColor(Color.black)
                        .background(Color.red)
                        .cornerRadius(12)
                }
            } //close HStack
        } //Close Vstack
        .background(backgroundColor)
        .padding(.top, 1)
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Title"),
                  message: Text("An alert"),
                  primaryButton: .default(Text("OK"), action: {
                  }),
                  secondaryButton: .cancel(Text("Cancel"), action: {
                  })
            )
        }
    } //close body
    
    func makePayment(purchaseString: String) {
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
    
    func handleTransactionResult() {
        if (transactionError == true) {
            //checkout cart is not cleared if transaction is denied
            print("transcation failed")
            displayMessage = "failed"
        } else {
            print("transaction was succesful")
            myCart.totalPrice = 0 //reset total
            myCart.cartObjects = [] //empty cart
            displayMessage = "succeded"
        }
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        guard SCCAPIResponse.isSquareResponse(url) else {
            return true
        }

        do {
            print("inside")
            let response = try SCCAPIResponse(responseURL: url)

            if let error = response.error {
                // Handle a failed request.
                print(error.localizedDescription)
                transactionError = true
                handleTransactionResult()
                transactionError = false //ensure transactionError is false for next customer or next attempt
            } else {
                // Handle a successful request.
                handleTransactionResult()
                
            }

        } catch let error as NSError {
            // Handle unexpected errors.
            print(error.localizedDescription)
        }

        return true
    }
}

