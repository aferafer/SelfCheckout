//
//  Products.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-05-29.
//

import Foundation
import SwiftUI

struct Products: Hashable {
    var displayTitle: String //what is displayed on product cards
    var cartName: String //what's displayed in checkout cart
    var referenceName: String //used to refer to product. Same as displayTitle but using _ for spaces. Uses Enums in AdminView for this
    var pic: String
    
    enum produceCatagory {
        case produce
        case valueAdded
        case retail
    }
    
    enum customOptions {
        case uniquePrice //used for meats with custom prices based on weight. Prelabelled
        case uniqueSize //example: small carrot bag vs large bag
        case uniqueTypes //examples: cherry tomatoes vs beefsteak tomatoes. Green peppers vs colored peppers
        case noOptions //no additional information needed
    }
    
    var catagory: produceCatagory
    var options: customOptions
}

extension Products {
    static let sampleData: [Products] =
    [
        Products(displayTitle: "Carrots", cartName: "Carrot Bag", referenceName: "Carrots", pic: "carrots", catagory: produceCatagory.produce, options: customOptions.uniqueSize),
        Products(displayTitle: "Salad Greens", cartName: "Salad Green Bag", referenceName: "Salad_Greens", pic: "salad_greens", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Head Lettuce", cartName: "Head Lettuce", referenceName: "Head_Lettuce", pic: "head_lettuce", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Kale", cartName: "Kale Bunch", referenceName: "Kale", pic: "kale", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Swiss Chard", cartName: "Swiss Chard Bunch", referenceName: "Swiss_Chard", pic: "swiss_chard", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Beets", cartName: "Beet Bunch", referenceName: "Beets", pic: "beets", catagory: produceCatagory.produce, options: customOptions.uniqueTypes),
        Products(displayTitle: "Leeks", cartName: "Leek Bunch", referenceName: "Leeks", pic: "leeks", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Spinach", cartName: "Spinach Bag", referenceName: "Spinach", pic: "spinach", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Tomatoes", cartName: "Tomato Basket", referenceName: "Tomatoes", pic: "beefsteak", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Cherry Tomatoes", cartName: "Cherry Tomato Basket", referenceName: "Cherry_Tomatoes", pic: "cherry", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Peppers", cartName: "Pepper", referenceName: "Peppers", pic: "peppers", catagory: produceCatagory.produce, options: customOptions.uniqueTypes),
        Products(displayTitle: "Egg Plant", cartName: "Egg Plant", referenceName: "Egg_Plant", pic: "egg_plant", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Cucumbers", cartName: "Cucumber", referenceName: "Cucumbers", pic: "cucumbers", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Parsley", cartName: "Parsley Bunch", referenceName: "Parsley", pic: "parsley", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Cilantro", cartName: "Cilantro Bunch", referenceName: "Cilantro", pic: "cilantro", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Dill", cartName: "Dill Bunch", referenceName: "Dill", pic: "dill", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Basil", cartName: "Basil Bunch", referenceName: "Basil", pic: "basil", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Fennel", cartName: "Fennel", referenceName: "Fennel", pic: "fennel", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Kohlrabi", cartName: "Kohlrabi", referenceName: "Kohlrabi", pic: "kohlrabi", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Green Onions", cartName: "Green Onion Bunch", referenceName: "Green_Onions", pic: "green_onions", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Garlic", cartName: "Garlic Bulb", referenceName: "Garlic", pic: "garlic", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Onions", cartName: "Onion", referenceName: "Onions", pic: "onions", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Summer Squash", cartName: "Summer Squash", referenceName: "Summer_Squash", pic: "summer_squash", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Squash", cartName: "Squash", referenceName: "Squash", pic: "winter_squash", catagory: produceCatagory.produce, options: customOptions.uniquePrice),
        Products(displayTitle: "Melons", cartName: "Melon", referenceName: "Melons", pic: "melons", catagory: produceCatagory.produce, options: customOptions.uniqueSize),
        Products(displayTitle: "Snow Peas", cartName: "Snow Pea Bag", referenceName: "Snow_Peas", pic: "snow_peas", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Microgreens", cartName: "Microgreen Bag", referenceName: "Microgreens", pic: "microgreens", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Radishes", cartName: "Radish Bunch", referenceName: "Radishes", pic: "radishes", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Turnips", cartName: "Turnip Bunch", referenceName: "Turnips", pic: "turnips", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Cabbage", cartName: "Cabbage", referenceName: "Cabbage", pic: "cabbage", catagory: produceCatagory.produce, options: customOptions.noOptions),
        
        Products(displayTitle: "Salsa", cartName: "Salsa Jar", referenceName: "Salsa", pic: "salsa", catagory: produceCatagory.valueAdded, options: customOptions.noOptions),
        Products(displayTitle: "Phil Sauce", cartName: "Phil Sauce Jar", referenceName: "Phil_Sauce", pic: "phil_sauce", catagory: produceCatagory.valueAdded, options: customOptions.noOptions),
        Products(displayTitle: "Pickled Onions", cartName: "Pickled Onion Jar", referenceName: "Pickled_Onions", pic: "pickled_onions", catagory: produceCatagory.valueAdded, options: customOptions.noOptions),
        Products(displayTitle: "Baguette", cartName: "Baguette", referenceName: "Baguette", pic: "baguette", catagory: produceCatagory.retail, options: customOptions.noOptions),
        Products(displayTitle: "Potatoes", cartName: "Potato Bag", referenceName: "Potatoes", pic: "potatoes", catagory: produceCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Cheese", cartName: "Cheese Pack", referenceName: "Cheese", pic: "cheese", catagory: produceCatagory.retail, options: customOptions.noOptions),
        Products(displayTitle: "Soup", cartName: "Soup", referenceName: "Soup", pic: "soup", catagory: produceCatagory.valueAdded, options: customOptions.noOptions),
        Products(displayTitle: "Pickled Beets", cartName: "Pickled Beet Jar", referenceName: "Pickled_Beets", pic: "pickled_beets", catagory: produceCatagory.valueAdded, options: customOptions.noOptions),
        Products(displayTitle: "Pickled Carrots", cartName: "Pickled Carrot Jar", referenceName: "Pickled_Carrots", pic: "pickled_carrots", catagory: produceCatagory.valueAdded, options: customOptions.noOptions),
        Products(displayTitle: "Chicken", cartName: "Chicken", referenceName: "Chicken", pic: "chicken", catagory: produceCatagory.retail, options: customOptions.noOptions),
        Products(displayTitle: "Coffee", cartName: "Coffee Bean Bag", referenceName: "Coffee", pic: "coffee_beans", catagory: produceCatagory.retail, options: customOptions.noOptions),
        Products(displayTitle: "Sweet Carrots", cartName: "Sweet Carrot Jar", referenceName: "Sweet_Carrots", pic: "sweet_carrots", catagory: produceCatagory.valueAdded, options: customOptions.noOptions),
        Products(displayTitle: "Ground Beef", cartName: "Ground Beef Pack", referenceName: "Ground_Beef", pic: "ground_beef", catagory: produceCatagory.retail, options: customOptions.noOptions),
        Products(displayTitle: "Stewing Beef", cartName: "Stewing Beef Pack", referenceName: "Stewing_Beef", pic: "stewing_beef", catagory: produceCatagory.retail, options: customOptions.noOptions),
        Products(displayTitle: "Lamb Lasagna", cartName: "Lamb Lasagna Meal", referenceName: "Lamb_Lasagna", pic: "lamb_lasagna", catagory: produceCatagory.valueAdded, options: customOptions.noOptions),
        Products(displayTitle: "Whole Chicken", cartName: "Whole Chicken", referenceName: "Whole_Chicken", pic: "whole_chicken", catagory: produceCatagory.retail, options: customOptions.uniquePrice),
        Products(displayTitle: "Carrot Cake", cartName: "Carrot Cake", referenceName: "Carrot_Cake", pic: "carrot_cake", catagory: produceCatagory.valueAdded, options: customOptions.noOptions)
    ]
}
