
//  DailyScrum.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-05-29.
//

import Foundation
import SwiftUI

struct ProductType {
    var parentProduct: String //example: Beets
    var productVariation: String //example: Striped Beets
    var price: String
    var pic: String
}

extension ProductType {
    static let variationData: [ProductType] =
    [
        //unique types
        ProductType(parentProduct: "Beet Bunch", productVariation: "StripedBeets", price: "3.75", pic: "striped_beets"),
        ProductType(parentProduct: "Beet Bunch", productVariation: "CylindraBeets", price: "3.75", pic: "cylindra_beets"),
        ProductType(parentProduct: "Beet Bunch", productVariation: "GoldenBeets", price: "3.75", pic: "golden_beets"),
        ProductType(parentProduct: "Pepper", productVariation: "GreenPeppers", price: "2.50", pic: "green_peppers"),
        ProductType(parentProduct: "Pepper", productVariation: "ColoredPeppers", price: "3.00", pic: "colored_peppers"),
        
        //unique sizes
        ProductType(parentProduct: "Carrot Bag", productVariation: "SmallCarrots", price: "3.50", pic: "carrots"),
        ProductType(parentProduct: "Carrot Bag", productVariation: "LargeCarrots", price: "6.25", pic: "carrots"),
        ProductType(parentProduct: "Melon", productVariation: "Small SmallMelons", price: "3.00", pic: "melons"),
        ProductType(parentProduct: "Melon", productVariation: "Medium MediumMelons", price: "4.00", pic: "melons"),
        ProductType(parentProduct: "Melon", productVariation: "Large LargeMelons", price: "5.00", pic: "melons"),
        
    ]
}

