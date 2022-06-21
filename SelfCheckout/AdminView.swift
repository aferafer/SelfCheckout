//
//  SwiftUIView.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-06-18.
//

import SwiftUI

struct AdminView: View {
    var scrums: [DailyScrum]
    @ObservedObject var cartData: CheckoutClass
    
    
    //whether or not item is available and should be displayed
    @AppStorage("CarrotsVisible") var CarrotsVisible = true
    @AppStorage("HeadLettuceVisible") var HeadLettuceVisible = true
    @AppStorage("SaladGreensVisible") var SaladGreensVisible = true
    
    //item prices
    @AppStorage("CarrotsPrice") var CarrotsPrice = "3.25"
    @AppStorage("HeadLettucePrice") var HeadLettucePrice = "3.75"
    @AppStorage("SaladGreensPrice") var SaladGreensPrice = "5.25"

        var body: some View {
            Button("Load settings") {
                print("loading")
                cartData.isAvailable["CarrotsVisible"] = CarrotsVisible
                cartData.isAvailable["HeadLettuceVisible"] = HeadLettuceVisible
                cartData.isAvailable["SaladGreensVisible"] = SaladGreensVisible
                print(cartData.isAvailable)
                cartData.priceDict["myCarrotsPrice"] = CarrotsPrice
                cartData.priceDict["myHeadLettucePrice"] = HeadLettucePrice
                cartData.priceDict["mySaladGreensPrice"] = SaladGreensPrice
                print(cartData.priceDict)
                
            }
            Form {
                Section(header: Text("Product Availability")) {
                    Toggle(isOn: $CarrotsVisible) {Text("Carrots Visible?")}
                    Toggle(isOn: $HeadLettuceVisible) {Text("Head Lettuce Visible?")}
                    Toggle(isOn: $SaladGreensVisible) {Text("Salad Greens Visible?")}
                }
            }
            
            Form {
                HStack {
                    let cost = NumberFormatter().number(from: CarrotsPrice)?.doubleValue
                    Text("Carrot Bag Price: ")
                    TextField("Enter Item Price...", text: $CarrotsPrice).padding()
                    if (cost == nil) {
                        Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                    } else {
                        Text("Current Price is: " + CarrotsPrice)
                    }
                }
                
                HStack {
                    let cost = NumberFormatter().number(from: HeadLettucePrice)?.doubleValue
                    Text("Head Lettuce Bag Price: ")
                    TextField("Enter Item Price...", text: $HeadLettucePrice).padding()
                    if (cost == nil) {
                        Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                    } else {
                        Text("Current Price is: " + HeadLettucePrice)
                    }
                }
            
                HStack {
                    let cost = NumberFormatter().number(from: SaladGreensPrice)?.doubleValue
                    Text("Salad Green Bag Price: ")
                    TextField("Enter Item Price...", text: $SaladGreensPrice).padding()
                    if (cost == nil) {
                        Spacer()
                        Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                    } else {
                        Text("Current Price is: " + SaladGreensPrice)
                    }
                }
            
            }
        }
}

extension AdminView {
    enum price {
        case carrots
        case beets
        case peppers
        case dill
        case garlic
        case snowPeas
        case potatoes
        case saladGreens
        case leeks
        case eggPlant
        case basil
        case onions
        case microgreens
        case headLettuce
        case spinach
        case cucumbers
        case fennel
        case summerSquash
        case radishes
        case kale
        case tomatoes
        case parsley
        case kohlrabi
        case squash
        case turnips
        case swissChard
        case cherryTomatoes
        case cilantro
        case greenOnions
        case melons
        case cabbage
        case salsa
        case pickledCarrots
        case philSauce
        case sweetCarrots
        case pickledOnions
        case lambLasagna
        case soup
        case carrotCake
        case pickledBeets
        case baguette
        case stewingBeef
        case cheese
        case wholeChicken
        case chicken
        case coffee
        case groundBeef
    }
}
