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
    var name: String
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
        DailyScrum(displayTitle: "Carrots", name: "Carrot Bag", price: "3.25", pic: "carrots", catagory: produceCatagory.produce, options: customOptions.uniqueSize),
        DailyScrum(displayTitle: "Salad Greens", name: "Salad Green Bag", price: "5.25", pic: "salad_greens", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Head Lettuce", name: "Head Lettuce", price: "3.75", pic: "head_lettuce", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Kale", name: "Kale Bunch", price: "5.5", pic: "kale", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Swiss Chard", name: "Swiss Chard Bunch", price: "5.5", pic: "swiss_chard", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Beets", name: "Beet Bunch", price: "2.50", pic: "beets", catagory: produceCatagory.produce, options: customOptions.uniqueTypes),
        DailyScrum(displayTitle: "Leeks", name: "Leek Bunch", price: "5.00", pic: "leeks", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Spinach", name: "Spinach Bag", price: "5.5", pic: "spinach", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Tomatoes", name: "Tomato Basket", price: "5.00", pic: "beefsteak", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Cherry Tomatoes", name: "Cherry Tomato Basket", price: "5.50", pic: "cherry", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Peppers", name: "Pepper", price: "2.00", pic: "peppers", catagory: produceCatagory.produce, options: customOptions.uniqueTypes),
        DailyScrum(displayTitle: "Egg Plant", name: "Egg Plant", price: "1.75", pic: "egg_plant", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Cucumbers", name: "Cucumber", price: "1.75", pic: "cucumbers", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Parsley", name: "Parsley Bunch", price: "3.00", pic: "parsley", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Cilantro", name: "Cilantro Bunch", price: "3.00", pic: "cilantro", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Dill", name: "Dill Bunch", price: "3.00", pic: "dill", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Basil", name: "Basil Bunch", price: "3.00", pic: "basil", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Fennel", name: "Fennel", price: "3.50", pic: "fennel", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Kohlrabi", name: "Kohlrabi", price: "3.75", pic: "kohlrabi", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Green Onions", name: "Green Onion Bunch", price: "3.00", pic: "green_onions", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Garlic", name: "Garlic Bulb", price: "3.00", pic: "garlic", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Onions", name: "Onion", price: "1.75", pic: "onions", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Summer Squash", name: "Summer Squash", price: "1.50", pic: "summer_squash", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Squash", name: "Squash", price: "1.50", pic: "winter_squash", catagory: produceCatagory.produce, options: customOptions.uniquePrice),
        DailyScrum(displayTitle: "Melons", name: "Melon", price: "4.00", pic: "melons", catagory: produceCatagory.produce, options: customOptions.uniqueSize),
        DailyScrum(displayTitle: "Snow Peas", name: "Snow Pea Bag", price: "4.00", pic: "snow_peas", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Microgreens", name: "Microgreen Bag", price: "4.75", pic: "microgreens", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Radishes", name: "Radish Bunch", price: "3.00", pic: "radishes", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Turnips", name: "Turnip Bunch", price: "3.50", pic: "turnips", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Cabbage", name: "Cabbage", price: "5.00", pic: "cabbage", catagory: produceCatagory.produce, options: customOptions.noOptions),
        
        DailyScrum(displayTitle: "Salsa", name: "Salsa Jar", price: "1.75", pic: "salsa", catagory: produceCatagory.valueAdded, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Phil Sauce", name: "Phil Sauce Jar", price: "3.00", pic: "phil_sauce", catagory: produceCatagory.valueAdded, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Pickled Onions", name: "Pickled Onion Jar", price: "3.00", pic: "pickled_onions", catagory: produceCatagory.valueAdded, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Baguette", name: "Baguette", price: "3.00", pic: "baguette", catagory: produceCatagory.retail, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Potatoes", name: "Potato Bag", price: "3.00", pic: "potatoes", catagory: produceCatagory.produce, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Cheese", name: "Cheese Pack", price: "3.50", pic: "cheese", catagory: produceCatagory.retail, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Soup", name: "Soup", price: "3.00", pic: "soup", catagory: produceCatagory.valueAdded, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Pickled Beets", name: "Pickled Beet Jar", price: "3.00", pic: "pickled_beets", catagory: produceCatagory.valueAdded, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Pickled Carrots", name: "Pickled Carrot Jar", price: "1.75", pic: "pickled_carrots", catagory: produceCatagory.valueAdded, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Chicken", name: "Chicken", price: "1.50", pic: "chicken", catagory: produceCatagory.retail, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Coffee", name: "Coffee Bean Bag", price: "1.50", pic: "coffee_beans", catagory: produceCatagory.retail, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Sweet Carrots", name: "Sweet Carrot Jar", price: "4.00", pic: "sweet_carrots", catagory: produceCatagory.valueAdded, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Ground Beef", name: "Ground Beef Pack", price: "4.00", pic: "ground_beef", catagory: produceCatagory.retail, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Stewing Beef", name: "Stewing Beef Pack", price: "4.75", pic: "stewing_beef", catagory: produceCatagory.retail, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Lamb Lasagna", name: "Lamb Lasagna Meal", price: "3.00", pic: "lamb_lasagna", catagory: produceCatagory.valueAdded, options: customOptions.noOptions),
        DailyScrum(displayTitle: "Whole Chicken", name: "Whole Chicken", price: "3.50", pic: "whole_chicken", catagory: produceCatagory.retail, options: customOptions.uniquePrice),
        DailyScrum(displayTitle: "Carrot Cake", name: "Carrot Cake", price: "5.00", pic: "carrot_cake", catagory: produceCatagory.valueAdded, options: customOptions.noOptions)
    ]
}
