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
    
    @Published var cartObjects:[CartObject] = [
        CartObject(name: "Empty Cart", price: "999", quantity: 0)
    ]
    /*
    @Published var cartObjects:[String: CartObject] = [
        "Large Carrot Bag":CartObject(name: "Large Carrot Bag", price: "6.25", quantity: 0),
        "Small Carrot Bag":CartObject(name: "Small Carrot Bag", price: "6.25", quantity: 0),
        "Head Lettuce":CartObject(name: "Head Lettuce", price: "6.25", quantity: 0),
        "Salad Green Bag":CartObject(name: "Salad Green Bag", price: "6.25", quantity: 0),
        "Kale Bunch":CartObject(name: "Kale Bunch", price: "6.25", quantity: 0),
        "Swiss Chard Bunch":CartObject(name: "Swiss Chard Bunch", price: "6.25", quantity: 0),
        "Leek Bunch":CartObject(name: "Leek Bunch", price: "6.25", quantity: 0),
        "Spinach Bag":CartObject(name: "Spinach Bag", price: "6.25", quantity: 0),
        "Tomato Basket":CartObject(name: "Tomato Basket", price: "6.25", quantity: 0),
        "Cherry Tomato Basket":CartObject(name: "Cherry Tomato Basket", price: "6.25", quantity: 0),
        "Egg Plant":CartObject(name: "Egg Plant", price: "6.25", quantity: 0),
        "Cucumber":CartObject(name: "Cucumber", price: "6.25", quantity: 0),
        "Parsley Bunch":CartObject(name: "Parsley Bunch", price: "6.25", quantity: 0),
        "Cilantro Bunch":CartObject(name: "Cilantro Bunch", price: "6.25", quantity: 0),
        "Dill Bunch":CartObject(name: "Dill Bunch", price: "6.25", quantity: 0),
        "Basil Bunch":CartObject(name: "Basil Bunch", price: "6.25", quantity: 0),
        "Fennel":CartObject(name: "Fennel", price: "6.25", quantity: 0),
        "Kohlrabi":CartObject(name: "Kohlrabi", price: "6.25", quantity: 0),
        "Green Onion Bunch":CartObject(name: "Green Onion Bunch", price: "6.25", quantity: 0),
        "Garlic Bulb":CartObject(name: "Garlic Bulb", price: "6.25", quantity: 0),
        "Onion":CartObject(name: "Onion", price: "6.25", quantity: 0),
        "Summer Squash":CartObject(name: "Summer Squash", price: "6.25", quantity: 0),
        "Squash":CartObject(name: "Squash", price: "6.25", quantity: 0),
        "Snow Pea Bag":CartObject(name: "Snow Pea Bag", price: "6.25", quantity: 0),
        "Microgreen Bag":CartObject(name: "Microgreen Bag", price: "6.25", quantity: 0),
        CartObject(name: "Radish Bunch", price: "6.25", quantity: 0),
        CartObject(name: "Turnip Bunch", price: "6.25", quantity: 0),
        CartObject(name: "Cabbage", price: "6.25", quantity: 0),
        CartObject(name: "Salsa Jar", price: "6.25", quantity: 0),
        CartObject(name: "Phil Sauce Jar", price: "6.25", quantity: 0),
        CartObject(name: "Pickled Onion Jar", price: "6.25", quantity: 0),
        CartObject(name: "Baguette", price: "6.25", quantity: 0),
        CartObject(name: "Potato Bag", price: "6.25", quantity: 0),
        CartObject(name: "Cheese Pack", price: "6.25", quantity: 0),
        CartObject(name: "Soup", price: "6.25", quantity: 0),
        CartObject(name: "Pickled Beet Jar", price: "6.25", quantity: 0),
        CartObject(name: "Pickled Carrot Jar", price: "6.25", quantity: 0),
        CartObject(name: "Chicken", price: "6.25", quantity: 0),
        CartObject(name: "Coffee Bean Bag", price: "6.25", quantity: 0),
        CartObject(name: "Sweet Carrot Jar", price: "6.25", quantity: 0),
        CartObject(name: "Ground Beef Pack", price: "6.25", quantity: 0),
        CartObject(name: "Stewing Beef Pack", price: "6.25", quantity: 0),
        CartObject(name: "Lamb Lasagna Meal", price: "6.25", quantity: 0),
        CartObject(name: "Whole Chicken", price: "6.25", quantity: 0),
        CartObject(name: "Carrot Cake", price: "6.25", quantity: 0),
    
        //Beet types:
        CartObject(name: "Striped Beet Bunch", price: "6.25", quantity: 0),
        CartObject(name: "Cylindra Beet Bunch", price: "6.25", quantity: 0),
        CartObject(name: "Golden Beet Bunch", price: "6.25", quantity: 0),
        
        //Pepper types:
        CartObject(name: "Green Pepper", price: "6.25", quantity: 0),
        CartObject(name: "Colored Pepper", price: "6.25", quantity: 0),
        
        //Melon sizes:
        CartObject(name: "Small Melon", price: "6.25", quantity: 0),
        CartObject(name: "Medium Melon", price: "6.25", quantity: 0),
        CartObject(name: "Large Melon", price: "6.25", quantity: 0),
    ]
     */
    
}
