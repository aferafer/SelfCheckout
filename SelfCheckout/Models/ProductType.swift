
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
        ProductType(parentProduct: "Beet Bunch", referenceName: "Striped_Beets", displayName: "Striped Beets", cartName: "Striped Beet Bag", pic: "striped_beets"),
        ProductType(parentProduct: "Beet Bunch", referenceName: "Cylindra_Beets", displayName: "Cylindra Beets", cartName: "Cylindra Beet Bag", pic: "cylindra_beets"),
        ProductType(parentProduct: "Beet Bunch", referenceName: "Golden_Beets", displayName: "Golden Beets", cartName: "Golden Beet Bag", pic: "golden_beets"),
        ProductType(parentProduct: "Pepper", referenceName: "Green_Peppers", displayName: "Green Peppers", cartName: "Green Pepper", pic: "green_peppers"),
        ProductType(parentProduct: "Pepper", referenceName: "Colored_Peppers", displayName: "Colored Peppers", cartName: "Colored Pepper", pic: "colored_peppers"),
        
        //unique sizes
        ProductType(parentProduct: "Carrot Bag", referenceName: "Small_Carrots", displayName: "Small Carrot Bag", cartName: "Small Carrot Bag", pic: "carrots"),
        ProductType(parentProduct: "Carrot Bag", referenceName: "Large_Carrots", displayName: "Large Carrot Bag", cartName: "Large Carrot Bag", pic: "carrots"),
        ProductType(parentProduct: "Melon", referenceName: "Small_Melons", displayName: "Small Melons", cartName: "Small Melon", pic: "melons"),
        ProductType(parentProduct: "Melon", referenceName: "Medium_Melons", displayName: "Medium Melons", cartName: "Medium Melon", pic: "melons"),
        ProductType(parentProduct: "Melon", referenceName: "Large_Melons", displayName: "Large Melons", cartName: "Large Melon", pic: "melons"),
        
        ProductType(parentProduct: "Honey", referenceName: "Wildflower_Honey", displayName: "Wildflower", cartName: "Wildflower Honey Jar", pic: "wildflower_honey"),
        ProductType(parentProduct: "Honey", referenceName: "White_Cream_Honey", displayName: "White Cream", cartName: "White Cream Honey Jar", pic: "white_cream_honey"),
        ProductType(parentProduct: "Honey", referenceName: "Cinamon_Cream_Honey", displayName: "Cinamon Cream", cartName: "Cinamon Cream Honey Jar", pic: "cinamon_cream_honey"),
    ]
}

