
//  Products.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-05-29.
//

import Foundation
import SwiftUI

struct ProductType {
    var parentProduct: String //example: Beets
    var referenceName: String //example: Striped Beets
    var displayName: String
    var cartName: String
    var pic: String
}

extension ProductType {
    static let variationData: [ProductType] =
    [
        //unique types
        ProductType(parentProduct: "Beet Bunch", referenceName: "StripedBeets", displayName: "Striped Beets", cartName: "Striped Beet Bag", pic: "striped_beets"),
        ProductType(parentProduct: "Beet Bunch", referenceName: "CylindraBeets", displayName: "Cylindra Beets", cartName: "Cylindra Beet Bag", pic: "cylindra_beets"),
        ProductType(parentProduct: "Beet Bunch", referenceName: "GoldenBeets", displayName: "Golden Beets", cartName: "Golden Beet Bag", pic: "golden_beets"),
        ProductType(parentProduct: "Pepper", referenceName: "GreenPeppers", displayName: "Green Peppers", cartName: "Green Pepper", pic: "green_peppers"),
        ProductType(parentProduct: "Pepper", referenceName: "ColoredPeppers", displayName: "Colored Peppers", cartName: "Colored Pepper", pic: "colored_peppers"),
        
        //unique sizes
        ProductType(parentProduct: "Carrot Bag", referenceName: "SmallCarrots", displayName: "Small Carrot Bag", cartName: "Small Carrot Bag", pic: "carrots"),
        ProductType(parentProduct: "Carrot Bag", referenceName: "LargeCarrots", displayName: "Large Carrot Bag", cartName: "Large Carrot Bag", pic: "carrots"),
        ProductType(parentProduct: "Melon", referenceName: "SmallMelons", displayName: "Small Melons", cartName: "Small Melon", pic: "melons"),
        ProductType(parentProduct: "Melon", referenceName: "MediumMelons", displayName: "Medium Melons", cartName: "Medium Melon", pic: "melons"),
        ProductType(parentProduct: "Melon", referenceName: "LargeMelons", displayName: "Large Melons", cartName: "Large Melon", pic: "melons"),
        
    ]
}

