//
//  CartObject.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-06-16.
//

import Foundation

struct CartObject: Identifiable, Equatable {
    let id: UUID
    var name: String
    var price: String
    var quantity: Int
    
    init(id: UUID = UUID(), name: String, price: String, quantity: Int) {
        self.id = id
        self.name = name
        self.price = price
        self.quantity = quantity
    }
}

extension CartObject {
    static func == (lhs: CartObject, rhs: CartObject) -> Bool {
        return
            lhs.name == rhs.name &&
            lhs.price == rhs.price
    }
}
