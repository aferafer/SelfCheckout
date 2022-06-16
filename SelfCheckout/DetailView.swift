//
//  DetailView.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-05-31.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var myCart: CheckoutClass
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var customPrice: String = ""
    let scrum: DailyScrum
    let productVariations = ProductType.variationData
    var body: some View {
        VStack {
            if (scrum.options == DailyScrum.customOptions.uniquePrice) {
                Text("Please Enter the Price For Your Item")
                    .bold()
                Spacer()
                    .frame(height: 50)
                VStack {
                    TextField("Enter Price", text: $customPrice, onEditingChanged: { (isBegin) in
                        if isBegin {
                            print("Begins editing")
                        }
                    },
                    onCommit: {
                        print(myCart.priceDict)
                        myCart.priceDict["Squash50"] = customPrice //sets stored price for item to inputed price
                        myCart.cartDict["Squash50"] = 1
                        myCart.cartObjects.append(CartObject(name: "Squash", price: customPrice, quantity: 1))
                        print(myCart.priceDict)
                        print(myCart.cartDict)
                        myCart.totalPrice += Double(customPrice)!
                        action: do { self.presentationMode.wrappedValue.dismiss() }
                    })
                }
            }
            if (scrum.options == DailyScrum.customOptions.uniqueTypes || scrum.options == DailyScrum.customOptions.uniqueSize) {
                Text("Please Select One of the Below Options")
                    .bold()
                Spacer()
                    .frame(height: 50)
                let parentType: String = scrum.name //beets, peppers etc. Used to find associated subtypes like golden beets or colored peppers
                HStack {
                    ForEach(productVariations, id: \.productVariation) { productType in
                        if (productType.parentProduct == parentType) { //display all product variations for parent product
                            Spacer()
                            ProductTypeView(productVariation: productType).onTapGesture {
                                print("productType.productVariation: " + productType.productVariation)
                                print("myCart.cartDict[productType.productVariation] : " + String(myCart.cartDict[productType.productVariation]!))
                                myCart.totalPrice += Double(myCart.priceDict[productType.productVariation]!)!
                                myCart.cartDict[productType.productVariation]! += 1
                                action: do { self.presentationMode.wrappedValue.dismiss() }
                                }
                        }
                    } //ForEach
                    Spacer()
                } //HStack
            }
        } //VStack
    } //body
} //view

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(myCart: CheckoutClass(), scrum: DailyScrum.sampleData[0])
        }
    }
}
