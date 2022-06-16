//
//  CheckoutClass.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-06-09.
//

import Combine

class CheckoutClass: ObservableObject {
    @Published var totalPrice = 0.00
    @Published var cartDict:[String:Int] = [
        "Large Carrot Bag": 0,
        "Small Carrot Bag": 0,
        "Head Lettuce": 0,
        "Salad Green Bag": 0,
        "Kale Bunch": 0,
        "Swiss Chard Bunch": 0,
        "Leek Bunch": 0,
        "Spinach Bag": 0,
        "Tomato Basket": 0,
        "Cherry Tomato Basket": 0,
        "Egg Plant": 0,
        "Cucumber": 0,
        "Parsley Bunch": 0,
        "Cilantro Bunch": 0,
        "Dill Bunch": 0,
        "Basil Bunch": 0,
        "Fennel": 0,
        "Kohlrabi": 0,
        "Green Onion Bunch": 0,
        "Garlic Bulb": 0,
        "Onion": 0,
        "Summer Squash": 0,
        "Squash": 0,
        "Snow Pea Bag": 0,
        "Microgreen Bag": 0,
        "Radish Bunch": 0,
        "Turnip Bunch": 0,
        "Cabbage": 0,
        "Salsa Jar": 0,
        "Phil Sauce Jar": 0,
        "Pickled Onion Jar": 0,
        "Baguette": 0,
        "Potato Bag": 0,
        "Cheese Pack": 0,
        "Soup": 0,
        "Pickled Beet Jar": 0,
        "Pickled Carrot Jar": 0,
        "Chicken": 0,
        "Coffee Bean Bag": 0,
        "Sweet Carrot Jar": 0,
        "Ground Beef Pack": 0,
        "Stewing Beef Pack": 0,
        "Lamb Lasagna Meal": 0,
        "Whole Chicken": 0,
        "Carrot Cake": 0,
        
        //Beet types:
        "Striped Beet Bunch": 0,
        "Cylindra Beet Bunch": 0,
        "Golden Beet Bunch": 0,
        
        //Pepper types:
        "Green Pepper": 0,
        "Colored Pepper": 0,
        
        //Melon sizes:
        "Small Melon": 0,
        "Medium Melon": 0,
        "Large Melon": 0
    ]
    
    var priceDict:[String:String] = [
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
    ]
}
