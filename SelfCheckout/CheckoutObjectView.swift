//
//  CheckoutObjectView.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-06-17.
//

import SwiftUI

struct CheckoutObjectView: View {
    @ObservedObject var myCart: CheckoutClass
    @Binding var item: CartObject
    var body: some View {
        HStack {
            Text(String(item.quantity))
            Text("·").bold().font(.custom("San Francisco", size: 25))
            Text(item.name)
            Spacer()
            Text(String(format: "%.2f", Double(item.price)! * Double(item.quantity)))
            Button { //"x" to delete items
                let findObject = CartObject.init(name: item.name, price: item.price, quantity: 0)
                //myCart.cartObjects = myCart.cartObjects.filter { $0 != findObject }
                print(myCart.cartObjects)
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
