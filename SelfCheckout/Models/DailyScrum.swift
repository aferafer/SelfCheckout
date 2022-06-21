//
//  DailyScrum.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-05-29.
//

import Foundation
import SwiftUI

struct DailyScrum: Hashable {
    var displayTitle: String //what is displayed on product cards
    var cartName: String
    var price: String
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

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(displayTitle: "Carrots", cartName: "Carrot Bag", price: "3.25", pic: "carrots", catagory: produceCatagory.produce, options: customOptions.uniqueSize),
        DailyScrum(displayTitle: "Salad Greens", cartName: "Salad Green Bag", price: "5.25", pic: "salad_greens", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Head Lettuce", cartName: "Head Lettuce", price: "3.75", pic: "head_lettuce", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Kale", cartName: "Kale Bunch", price: "5.5", pic: "kale", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Swiss Chard", cartName: "Swiss Chard Bunch", price: "5.5", pic: "swiss_chard", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Beets", cartName: "Beet Bunch", price: "2.50", pic: "beets", catagory: produceCatagory.produce, options: customOptions.uniqueTypes),
        DailyScrum(displayTitle: "Leeks", cartName: "Leek Bunch", price: "5.00", pic: "leeks", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Spinach", cartName: "Spinach Bag", price: "5.5", pic: "spinach", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Tomatoes", cartName: "Tomato Basket", price: "5.00", pic: "beefsteak", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Cherry Tomatoes", cartName: "Cherry Tomato Basket", price: "5.50", pic: "cherry", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Peppers", cartName: "Pepper", price: "2.00", pic: "peppers", catagory: produceCatagory.produce, options: customOptions.uniqueTypes),
        DailyScrum(displayTitle: "Egg Plant", cartName: "Egg Plant", price: "1.75", pic: "egg_plant", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Cucumbers", cartName: "Cucumber", price: "1.75", pic: "cucumbers", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Parsley", cartName: "Parsley Bunch", price: "3.00", pic: "parsley", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Cilantro", cartName: "Cilantro Bunch", price: "3.00", pic: "cilantro", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Dill", cartName: "Dill Bunch", price: "3.00", pic: "dill", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Basil", cartName: "Basil Bunch", price: "3.00", pic: "basil", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Fennel", cartName: "Fennel", price: "3.50", pic: "fennel", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Kohlrabi", cartName: "Kohlrabi", price: "3.75", pic: "kohlrabi", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Green Onions", cartName: "Green Onion Bunch", price: "3.00", pic: "green_onions", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Garlic", cartName: "Garlic Bulb", price: "3.00", pic: "garlic", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Onions", cartName: "Onion", price: "1.75", pic: "onions", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Summer Squash", cartName: "Summer Squash", price: "1.50", pic: "summer_squash", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Squash", cartName: "Squash", price: "1.50", pic: "winter_squash", catagory: produceCatagory.produce, options: customOptions.uniquePrice),
        DailyScrum(displayTitle: "Melons", cartName: "Melon", price: "4.00", pic: "melons", catagory: produceCatagory.produce, options: customOptions.uniqueSize),
        DailyScrum(displayTitle: "Snow Peas", cartName: "Snow Pea Bag", price: "4.00", pic: "snow_peas", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Microgreens", cartName: "Microgreen Bag", price: "4.75", pic: "microgreens", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Radishes", cartName: "Radish Bunch", price: "3.00", pic: "radishes", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Turnips", cartName: "Turnip Bunch", price: "3.50", pic: "turnips", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Cabbage", cartName: "Cabbage", price: "5.00", pic: "cabbage", catagory: produceCatagory.produce, options: customOptions.noOptions),
        
        DailyScrum(displayTitle: "Salsa", cartName: "Salsa Jar", price: "1.75", pic: "salsa", catagory: produceCatagory.valueAdded, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Phil Sauce", cartName: "Phil Sauce Jar", price: "3.00", pic: "phil_sauce", catagory: produceCatagory.valueAdded, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Pickled Onions", cartName: "Pickled Onion Jar", price: "3.00", pic: "pickled_onions", catagory: produceCatagory.valueAdded, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Baguette", cartName: "Baguette", price: "3.00", pic: "baguette", catagory: produceCatagory.retail, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Potatoes", cartName: "Potato Bag", price: "3.00", pic: "potatoes", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Cheese", cartName: "Cheese Pack", price: "3.50", pic: "cheese", catagory: produceCatagory.retail, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Soup", cartName: "Soup", price: "3.00", pic: "soup", catagory: produceCatagory.valueAdded, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Pickled Beets", cartName: "Pickled Beet Jar", price: "3.00", pic: "pickled_beets", catagory: produceCatagory.valueAdded, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Pickled Carrots", cartName: "Pickled Carrot Jar", price: "1.75", pic: "pickled_carrots", catagory: produceCatagory.valueAdded, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Chicken", cartName: "Chicken", price: "1.50", pic: "chicken", catagory: produceCatagory.retail, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Coffee", cartName: "Coffee Bean Bag", price: "1.50", pic: "coffee_beans", catagory: produceCatagory.retail, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Sweet Carrots", cartName: "Sweet Carrot Jar", price: "4.00", pic: "sweet_carrots", catagory: produceCatagory.valueAdded, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Ground Beef", cartName: "Ground Beef Pack", price: "4.00", pic: "ground_beef", catagory: produceCatagory.retail, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Stewing Beef", cartName: "Stewing Beef Pack", price: "4.75", pic: "stewing_beef", catagory: produceCatagory.retail, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Lamb Lasagna", cartName: "Lamb Lasagna Meal", price: "3.00", pic: "lamb_lasagna", catagory: produceCatagory.valueAdded, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Whole Chicken", cartName: "Whole Chicken", price: "3.50", pic: "whole_chicken", catagory: produceCatagory.retail, options: customOptions.uniquePrice),
        DailyScrum(displayTitle: "Carrot Cake", cartName: "Carrot Cake", price: "5.00", pic: "carrot_cake", catagory: produceCatagory.valueAdded, options: customOptions.noOptions)
    ]
}
