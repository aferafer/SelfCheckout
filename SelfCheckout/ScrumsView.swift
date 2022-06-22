//
//  ScrumsView.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-05-29.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    let produceColor: Color = Color(red: 153/255, green: 255/255, blue: 153/255)
    @ObservedObject var cartClass: CheckoutClass
    @State var total: Double
    var rows = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
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
                        LazyHGrid(rows: rows, spacing: 10) {
                            ForEach(scrums, id: \.displayTitle) { scrum in
                                if (scrum.catagory == DailyScrum.produceCatagory.produce && cartClass.isAvailable[scrum.referenceName]!) {
                                    if (scrum.options != DailyScrum.customOptions.noOptions) {
                                        NavigationLink(destination: DetailView(myCart: cartClass, scrum: scrum)) {
                                            CardView(scrum: scrum)
                                        }
                                    } else {
                                        CardView(scrum: scrum).onTapGesture {
                                            cartClass.totalPrice += Double(scrum.price)!
                                            let findObject = CartObject.init(cartName: scrum.cartName, price: cartClass.priceDict[scrum.referenceName]!, quantity: 1)
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
                        Spacer(minLength: 50)
                        LazyHGrid(rows: rows, spacing: 10) {
                            ForEach(scrums, id: \.displayTitle) { scrum in
                                if (scrum.catagory == DailyScrum.produceCatagory.valueAdded && cartClass.isAvailable[scrum.referenceName]!) {
                                    if (scrum.options != DailyScrum.customOptions.noOptions) {
                                        NavigationLink(destination: DetailView(myCart: cartClass, scrum: scrum)) {
                                            CardView(scrum: scrum)
                                        }
                                    } else {
                                        CardView(scrum: scrum).onTapGesture {
                                            cartClass.totalPrice += Double(scrum.price)!
                                            let findObject = CartObject.init(cartName: scrum.cartName, price: cartClass.priceDict[scrum.referenceName]!, quantity: 1)
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
                        Spacer(minLength: 50)
                        LazyHGrid(rows: rows, spacing: 10) {
                            ForEach(scrums, id: \.displayTitle) { scrum in
                                if (scrum.catagory == DailyScrum.produceCatagory.retail && cartClass.isAvailable[scrum.referenceName]!) {
                                    if (scrum.options != DailyScrum.customOptions.noOptions) {
                                        NavigationLink(destination: DetailView(myCart: cartClass, scrum: scrum)) {
                                            CardView(scrum: scrum)
                                        }
                                    } else {
                                        CardView(scrum: scrum).onTapGesture {
                                            cartClass.totalPrice += Double(scrum.price)!
                                            let findObject = CartObject.init(cartName: scrum.cartName, price: cartClass.priceDict[scrum.referenceName]!, quantity: 1)
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
                    }
                }.navigationBarTitle("Go back without purchasing").navigationBarHidden(true)
                    .statusBar(hidden: true)
                CheckoutView(myCart: cartClass)
                    .frame(width: 240, height: .infinity, alignment: .topTrailing)
            } //HStack
        } //VStack
    } //body close
} //view close


struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrumsView(scrums: DailyScrum.sampleData, cartClass: CheckoutClass(), total: 0)
        }
    }
}
