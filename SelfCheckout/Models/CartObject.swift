//
//  CartObject.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-06-16.
//

import Foundation

struct CartObject: Identifiable {
    let id: UUID = UUID()
    var name: String = "Default Name"
    var price: String = "99.00"
    var quantity: Int = 1
}
