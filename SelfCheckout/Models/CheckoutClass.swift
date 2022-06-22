//
//  CheckoutClass.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-06-09.
//

import Combine
import SwiftUI

class CheckoutClass: ObservableObject, Equatable {
    static func == (lhs: CheckoutClass, rhs: CheckoutClass) -> Bool {
        return lhs.cartObjects == rhs.cartObjects
    }
    
    @Published var totalPrice = 0.00
    
    var priceDict:[String:String] = [:]
        /*
        "Small Carrot Bag": "3.25",
        "Large Carrot Bag": "6.25",
        "Head Lettuce": "3.75",
        "Salad Green Bag": "5.25",
        "Kale Bunch": "5.50",
        "Swiss Chard Bunch": "5.50",
        "Leek Bunch": "5.00",
        "Spinach Bag": "5.50",
        "Tomato Basket": "5.00",
        "Cherry Tomato Basket": "5.50",
        "Egg Plant": "1.75",
        "Cucumber": "1.75",
        "Parsley Bunch": "3.00",
        "Cilantro Bunch": "3.00",
        "Dill Bunch": "3.00",
        "Basil Bunch": "3.00",
        "Fennel": "3.50",
        "Kohlrabi": "3.75",
        "Green Onion Bunch": "3.00",
        "Garlic Bulb": "3.00",
        "Onion": "1.75",
        "Summer Squash": "1.50",
        "Squash": "1.50",
        "Snow Pea Bag": "4.00",
        "Microgreen Bag": "4.75",
        "Radish Bunch": "3.00",
        "Turnip Bunch": "3.50",
        "Cabbage": "5.00",
        "Salsa Jar": "5.00",
        "Phil Sauce Jar": "5.00",
        "Pickled Onion Jar": "5.00",
        "Baguette": "5.00",
        "Potato Bag": "5.00",
        "Cheese Pack": "5.00",
        "Soup": "5.00",
        "Pickled Beet Jar": "5.00",
        "Pickled Carrot Jar": "5.00",
        "Chicken": "5.00",
        "Coffee Bean Bag": "5.00",
        "Sweet Carrot Jar": "5.00",
        "Ground Beef Pack": "5.00",
        "Stewing Beef Pack": "5.00",
        "Lamb Lasagna Meal": "5.00",
        "Whole Chicken": "5.00",
        "Carrot Cake": "5.00",
        
        //Beet types:
        "Striped Beet Bunch": "3.75",
        "Cylindra Beet Bunch": "3.75",
        "Golden Beet Bunch": "3.75",
        
        //Pepper types:
        "Green Pepper": "2.50",
        "Colored Pepper": "2.00",
        
        //Melon sizes
        "Small Melon": "3.00",
        "Medium Melon": "4.00",
        "Large Melon": "5.00"
         */
    
    @Published var isAvailable:[String:Bool] = [:]//bool to represent whether each product is available and should be displayed
    
    @Published var cartObjects:[CartObject] = []
}
