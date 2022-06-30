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
            Text(item.cartName)
            Spacer()
            Text(String(format: "%.2f", Double(item.price)! * Double(item.quantity)))
            Button { //"x" to delete items
                print(item.quantity)
                myCart.totalPrice -= Double(item.quantity) * Double(item.price)!
                let findObject = CartObject.init(cartName: item.cartName, price: item.price, quantity: item.quantity)
                myCart.cartObjects = myCart.cartObjects.filter { $0 != findObject }
                /*
                let findObject = CartObject.init(cartName: item.cartName, price: item.price, quantity: item.quantity)
                myCart.cartObjects = myCart.cartObjects.filter { $0 != findObject }
                myCart.totalPrice = myCart.totalPrice - Double(findObject.price)! //+ Double(item.quantity)
                 */
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
