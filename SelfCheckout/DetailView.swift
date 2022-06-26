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
    let referenceNames = ProductType.variationData
    var body: some View {
        VStack {
            if (scrum.options == DailyScrum.customOptions.uniquePrice) {
                Text("Please Enter the Price For Your Item")
                    .bold()
                Spacer()
                    .frame(height: 50)
                VStack {
                    HStack {
                        TextField("Enter Price Here", text: $customPrice, onEditingChanged: { (isBegin) in
                            if isBegin {
                                print("Begins editing")
                            }
                        },
                        onCommit: {
                            myCart.cartObjects.append(CartObject(cartName: scrum.cartName, price: customPrice, quantity: 1))
                            myCart.totalPrice += Double(customPrice)!
                            action: do { self.presentationMode.wrappedValue.dismiss() }
                        })
                        .keyboardType(.decimalPad)
                        .padding(20)
                        .frame(width: 240, height: 100)
                        .font(.largeTitle)
                        .border(Color.black)
                    }
                }
            }
            if (scrum.options == DailyScrum.customOptions.uniqueTypes || scrum.options == DailyScrum.customOptions.uniqueSize) {
                Text("Please Select One of the Below Options")
                    .bold()
                Spacer()
                    .frame(height: 50)
                let parentType: String = scrum.cartName //beets, peppers etc. Used to find associated subtypes like golden beets or colored peppers
                HStack {
                    ForEach(referenceNames, id: \.referenceName) { productType in
                        if (productType.parentProduct == parentType) { //display all product variations for parent product
                            Spacer()
                            ProductTypeView(myCart: myCart, productVariation: productType).onTapGesture {
                                myCart.totalPrice += Double(myCart.priceDict[productType.referenceName]!)!
                                let findObject = CartObject.init(cartName: productType.cartName, price: myCart.priceDict[productType.referenceName]!, quantity: 0)
                                let itemIndex = myCart.cartObjects.firstIndex(of: findObject)
                                if (itemIndex == nil) {
                                    myCart.cartObjects.append(CartObject(cartName: productType.cartName, price: myCart.priceDict[productType.referenceName]!, quantity: 1)) //create new checkout object for item since none currently exist
                                } else {
                                    myCart.cartObjects[itemIndex!].quantity += 1 //add one to already existing checkout item
                                }
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
