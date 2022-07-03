//
//  ScrumsView.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-05-29.
//

import SwiftUI

struct ScrumsView: View {
    let products: [Products]
    let produceColor: Color = Color(red: 153/255, green: 255/255, blue: 153/255)
    @ObservedObject var cartClass: CheckoutClass
    @State var total: Double
    @State var searchText = ""
    var rows = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var searchRows = [ //only two rows should be displayed when using the product search bar due to keyboard covering content
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        //NavigationView {
        GeometryReader { _ in
            VStack {
                Spacer()
                    .frame(height: 10)
                VStack{
                    HStack {
                        Spacer()
                        Text("Produce")
                            .bold()
                        Spacer()
                        Text("Made With Am Braigh Ingredients")
                            .bold()
                        Spacer()
                        Text("Local Products")
                            .bold()
                        Spacer()
                    }
                    Spacer()
                        .frame(height: 25)
                    Text("Scroll sideways to view full selection of products")
                        .bold()
                        .font(.custom("San Francisco", size: 25))
                }
                HStack  {
                    ScrollView(.horizontal) {
                        HStack {
                            if (searchText == "") { //if nothing is typed in product search bar
                                LazyHGrid(rows: rows, spacing: 10) {
                                    ForEach(products, id: \.displayTitle) { product in
                                        if (product.catagory == Products.productCatagory.produce && cartClass.isAvailable[product.referenceName]! && product.options != Products.customOptions.subVariation) {
                                            if (product.options != Products.customOptions.noOptions) {
                                                NavigationLink(destination: DetailView(myCart: cartClass, searchText: $searchText, product: product)) {
                                                    CardView(product: product)
                                                }
                                            } else {
                                                CardView(product: product).onTapGesture {
                                                    searchText = "" //clear search after product has been selected
                                                    cartClass.totalPrice += Double(cartClass.priceDict[product.referenceName]!)!
                                                    let findObject = CartObject.init(cartName: product.cartName, price: cartClass.priceDict[product.referenceName]!, quantity: 1)
                                                    let itemIndex = cartClass.cartObjects.firstIndex(of: findObject)
                                                    if (itemIndex == nil) {
                                                        cartClass.cartObjects.append(findObject) //add new checkout object
                                                    } else {
                                                        cartClass.cartObjects[itemIndex!].quantity += 1 //add one to already existing checkout item
                                                    }
                                                }
                                            } //end if-else
                                        } //end if
                                        
                                    } //end forEach
                                } //end lazyHGrid
                                Spacer(minLength: 100)
                                LazyHGrid(rows: rows, spacing: 10) {
                                    ForEach(products, id: \.displayTitle) { product in
                                        if (product.catagory == Products.productCatagory.valueAdded && cartClass.isAvailable[product.referenceName]! && product.options != Products.customOptions.subVariation) {
                                            if (product.options != Products.customOptions.noOptions) {
                                                NavigationLink(destination: DetailView(myCart: cartClass, searchText: $searchText, product: product)) {
                                                    CardView(product: product)
                                                }
                                            } else {
                                                CardView(product: product).onTapGesture {
                                                    searchText = "" //clear search after product has been selected
                                                    cartClass.totalPrice += Double(cartClass.priceDict[product.referenceName]!)!
                                                    let findObject = CartObject.init(cartName: product.cartName, price: cartClass.priceDict[product.referenceName]!, quantity: 1)
                                                    let itemIndex = cartClass.cartObjects.firstIndex(of: findObject)
                                                    if (itemIndex == nil) {
                                                        cartClass.cartObjects.append(findObject) //add new checkout object
                                                    } else {
                                                        cartClass.cartObjects[itemIndex!].quantity += 1 //add one to already existing checkout item
                                                    }
                                                }
                                            } //end if-else
                                        }
                                    }
                                }
                                Spacer(minLength: 100)
                                LazyHGrid(rows: rows, spacing: 10) {
                                    ForEach(products, id: \.displayTitle) { product in
                                        if (product.catagory == Products.productCatagory.retail && cartClass.isAvailable[product.referenceName]! && product.options != Products.customOptions.subVariation) {
                                            if (product.options != Products.customOptions.noOptions) {
                                                NavigationLink(destination: DetailView(myCart: cartClass, searchText: $searchText, product: product)) {
                                                    CardView(product: product)
                                                }
                                            } else {
                                                CardView(product: product).onTapGesture {
                                                    searchText = "" //clear search after product has been selected
                                                    cartClass.totalPrice += Double(cartClass.priceDict[product.referenceName]!)!
                                                    let findObject = CartObject.init(cartName: product.cartName, price: cartClass.priceDict[product.referenceName]!, quantity: 1)
                                                    let itemIndex = cartClass.cartObjects.firstIndex(of: findObject)
                                                    if (itemIndex == nil) {
                                                        cartClass.cartObjects.append(findObject) //add new checkout object
                                                    } else {
                                                        cartClass.cartObjects[itemIndex!].quantity += 1 //add one to already existing checkout item
                                                    }
                                                }
                                            } //end if-else
                                        } //close outer if statement
                                    } //close 3rd ForEach used to display products
                                } //close 3rd lazyHGrid
                            } else { //else if something has been typed into the product search bar
                                LazyHGrid(rows: searchRows, spacing: 10) {
                                    ForEach(products, id: \.displayTitle) { product in
                                        if (cartClass.isAvailable[product.referenceName]! && product.searchName.hasPrefix(searchText.lowercased()) && (product.options != Products.customOptions.uniqueTypes) && (product.options != Products.customOptions.uniqueSize)) {
                                            if (product.options != Products.customOptions.noOptions) {
                                                NavigationLink(destination: DetailView(myCart: cartClass, searchText: $searchText, product: product)) {
                                                    CardView(product: product)
                                                }
                                            } else {
                                                CardView(product: product).onTapGesture {
                                                    searchText = "" //clear search after product has been selected
                                                    cartClass.totalPrice += Double(cartClass.priceDict[product.referenceName]!)!
                                                    let findObject = CartObject.init(cartName: product.cartName, price: cartClass.priceDict[product.referenceName]!, quantity: 1)
                                                    let itemIndex = cartClass.cartObjects.firstIndex(of: findObject)
                                                    if (itemIndex == nil) {
                                                        cartClass.cartObjects.append(findObject) //add new checkout object
                                                    } else {
                                                        cartClass.cartObjects[itemIndex!].quantity += 1 //add one to already existing checkout item
                                                    }
                                                }
                                            } //end if-else
                                        } //close outer if statement
                                    } //close 'product search' ForEach used to display products highly relevant to search
                                    ForEach(products, id: \.displayTitle) { product in
                                        if (cartClass.isAvailable[product.referenceName]! && product.searchName.contains(searchText.lowercased()) &&  !product.searchName.hasPrefix(searchText.lowercased()) && (product.options != Products.customOptions.uniqueTypes) && (product.options != Products.customOptions.uniqueSize)) {
                                            if (product.options != Products.customOptions.noOptions) {
                                                NavigationLink(destination: DetailView(myCart: cartClass, searchText: $searchText, product: product)) {
                                                    CardView(product: product)
                                                }
                                            } else {
                                                CardView(product: product).onTapGesture {
                                                    cartClass.totalPrice += Double(cartClass.priceDict[product.referenceName]!)!
                                                    let findObject = CartObject.init(cartName: product.cartName, price: cartClass.priceDict[product.referenceName]!, quantity: 1)
                                                    let itemIndex = cartClass.cartObjects.firstIndex(of: findObject)
                                                    if (itemIndex == nil) {
                                                        cartClass.cartObjects.append(findObject) //add new checkout object
                                                    } else {
                                                        cartClass.cartObjects[itemIndex!].quantity += 1 //add one to already existing checkout item
                                                    }
                                                }
                                            } //end if-else
                                        } //close outer if statement
                                    } //close 'product search' ForEach used to display products less relevant to search
                                } //close 'product search' lazyHGrid
                            } //close if-else that decides how to display products depending on if the product search bar is being used
                        } //close HStack containing scrollable product sections
                        if (searchText != "") { //if product search bar is active push products to top of screen so they're visible
                            Spacer(minLength: 425)
                        }
                    } //close scrollview
                    .navigationBarTitle("Go back without purchasing").navigationBarHidden(true)
                        .statusBar(hidden: true)
                    CheckoutView(myCart: cartClass, productSearch: $searchText)
                        .frame(width: 240, height: .infinity, alignment: .topTrailing)
                } //close HStack containing 3 product sections
            } //close VStack containing entire view
        } //close geometry reader
        .ignoresSafeArea(.keyboard, edges: .all)
    } //body close
} //view close


struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrumsView(products: Products.productData, cartClass: CheckoutClass(), total: 0)
        }
    }
}
