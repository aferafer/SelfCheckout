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
    
    enum productCatagory {
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
    
    var catagory: productCatagory
    var options: customOptions
}

extension Products {
    static let productData: [Products] =
    [
        //productCatagory.produce
        Products(displayTitle: "Arugala", cartName: "Arugala Bag", referenceName: "Arugala", pic: "arugala", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Asparagus", cartName: "Asparagus Bunch", referenceName: "Asparagus", pic: "asparagus", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Basil", cartName: "Basil Bunch", referenceName: "Basil", pic: "basil", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Beet Greens", cartName: "Beet Green Bag", referenceName: "Beet_Greens", pic: "beet_greens", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Beets", cartName: "Beet Bunch", referenceName: "Beets", pic: "beets", catagory: productCatagory.produce, options: customOptions.uniqueTypes),
        Products(displayTitle: "Bok Choy", cartName: "Bok Choy Bunch", referenceName: "Bok_Choy", pic: "bok_choy", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Broccoli", cartName: "Broccoli", referenceName: "Broccoli", pic: "broccoli", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Brussel Sprouts", cartName: "Brussel Sprouts Bag", referenceName: "Brussel_Sprouts", pic: "brussel_sprouts", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Butterhead Lettuce", cartName: "Butterhead Lettuce", referenceName: "Butterhead_Lettuce", pic: "butterhead_lettuce", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Cabbage", cartName: "Cabbage", referenceName: "Cabbage", pic: "cabbage", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Carrots", cartName: "Carrot Bag", referenceName: "Carrots", pic: "carrots", catagory: productCatagory.produce, options: customOptions.uniqueSize),
        Products(displayTitle: "Celariac", cartName: "Celariac", referenceName: "Celariac", pic: "celariac", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Cherry Tomatoes", cartName: "Cherry Tomato Basket", referenceName: "Cherry_Tomatoes", pic: "cherry", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Cilantro", cartName: "Cilantro Bunch", referenceName: "Cilantro", pic: "cilantro", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Cucumbers", cartName: "Cucumber", referenceName: "Cucumbers", pic: "cucumbers", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Dill", cartName: "Dill Bunch", referenceName: "Dill", pic: "dill", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Egg Plant", cartName: "Egg Plant", referenceName: "Egg_Plant", pic: "egg_plant", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Eggs", cartName: "Dozen Eggs", referenceName: "Eggs", pic: "eggs", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Endives", cartName: "Endives Bag", referenceName: "Endives", pic: "endives", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Fennel", cartName: "Fennel", referenceName: "Fennel", pic: "fennel", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Filet Beans", cartName: "Filet Bean Bag", referenceName: "Filet_Beans", pic: "filet_beans", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Garlic", cartName: "Garlic Bulb", referenceName: "Garlic", pic: "garlic", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Green Onions", cartName: "Green Onion Bunch", referenceName: "Green_Onions", pic: "green_onions", catagory: productCatagory.produce, options: customOptions.noOptions),
        //Products(displayTitle: "Head Lettuce", cartName: "Head Lettuce", referenceName: "Head_Lettuce", pic: "head_lettuce", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Kale", cartName: "Kale Bunch", referenceName: "Kale", pic: "kale", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Kohlrabi", cartName: "Kohlrabi", referenceName: "Kohlrabi", pic: "kohlrabi", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Leeks", cartName: "Leek Bunch", referenceName: "Leeks", pic: "leeks", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Melons", cartName: "Melon", referenceName: "Melons", pic: "melons", catagory: productCatagory.produce, options: customOptions.uniqueSize),
        Products(displayTitle: "Microgreens", cartName: "Microgreen Bag", referenceName: "Microgreens", pic: "microgreens", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Onions", cartName: "Onion", referenceName: "Onions", pic: "onions", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Onion Bag", cartName: "Onion Bag", referenceName: "Onion_Bags", pic: "onion_bag", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Parsley", cartName: "Parsley Bunch", referenceName: "Parsley", pic: "parsley", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Parsnips", cartName: "Parsnip Bag", referenceName: "Parsnips", pic: "parsnips", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Peppers", cartName: "Pepper", referenceName: "Peppers", pic: "peppers", catagory: productCatagory.produce, options: customOptions.uniqueTypes),
        Products(displayTitle: "Potatoes", cartName: "Potato Bag", referenceName: "Potatoes", pic: "potatoes", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Pumpkins", cartName: "Pumpkin", referenceName: "Pumpkins", pic: "pumpkins", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Radishes", cartName: "Radish Bunch", referenceName: "Radishes", pic: "radishes", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Red & Green Bag", cartName: "Red & Green Headlettuce", referenceName: "RedGreen_Headlettuce", pic: "red&green_head_lettuce", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Romaine Lettuce", cartName: "Romaine Lettuce Bag", referenceName: "Romaine_Lettuce", pic: "romaine_lettuce", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Rutabaga", cartName: "Rutabaga Bag", referenceName: "Rutabaga", pic: "rutabaga", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Salad Greens", cartName: "Salad Green Bag", referenceName: "Salad_Greens", pic: "salad_greens", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Snow Peas", cartName: "Snow Pea Bag", referenceName: "Snow_Peas", pic: "snow_peas", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Spinach", cartName: "Spinach Bag", referenceName: "Spinach", pic: "spinach", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Squash", cartName: "Squash", referenceName: "Squash", pic: "winter_squash", catagory: productCatagory.produce, options: customOptions.uniquePrice),
        Products(displayTitle: "Summer Squash", cartName: "Summer Squash", referenceName: "Summer_Squash", pic: "summer_squash", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Sweet Potatoes", cartName: "Sweet Potato Bag", referenceName: "Sweet_Potatoes", pic: "sweet_potatoes", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Swiss Chard", cartName: "Swiss Chard Bunch", referenceName: "Swiss_Chard", pic: "swiss_chard", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Tatsoi", cartName: "Tatsoi Bunch", referenceName: "Tatsoi", pic: "tatsoi", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Tomatoes", cartName: "Tomato Basket", referenceName: "Tomatoes", pic: "beefsteak", catagory: productCatagory.produce, options: customOptions.noOptions),
        Products(displayTitle: "Turnips", cartName: "Turnip Bunch", referenceName: "Turnips", pic: "turnips", catagory: productCatagory.produce, options: customOptions.noOptions),
        
        //productCatagory.valueAdded
        Products(displayTitle: "Carrot Cake", cartName: "Carrot Cake", referenceName: "Carrot_Cake", pic: "carrot_cake", catagory: productCatagory.valueAdded, options: customOptions.noOptions),
        Products(displayTitle: "Chutney", cartName: "Chutney Jar", referenceName: "Chutney", pic: "chutney", catagory: productCatagory.valueAdded, options: customOptions.noOptions),
        Products(displayTitle: "Dill Carrots", cartName: "Dill Pickled Carrot Jar", referenceName: "Dill_Carrots", pic: "dill_carrots", catagory: productCatagory.valueAdded, options: customOptions.noOptions),
        Products(displayTitle: "Pickled Beets", cartName: "Pickled Beet Jar", referenceName: "Pickled_Beets", pic: "pickled_beets", catagory: productCatagory.valueAdded, options: customOptions.noOptions),
        Products(displayTitle: "Pickled Carrots", cartName: "Pickled Carrot Jar", referenceName: "Pickled_Carrots", pic: "pickled_carrots", catagory: productCatagory.valueAdded, options: customOptions.noOptions),
        Products(displayTitle: "Pickled Onions", cartName: "Pickled Onion Jar", referenceName: "Pickled_Onions", pic: "pickled_onions", catagory: productCatagory.valueAdded, options: customOptions.noOptions),
        Products(displayTitle: "Red Onion Jam", cartName: "Red Onion Jam Jar", referenceName: "Red_Onion_Jam", pic: "red_onion_jam", catagory: productCatagory.valueAdded, options: customOptions.noOptions),
        Products(displayTitle: "Salsa", cartName: "Salsa Jar", referenceName: "Salsa", pic: "salsa", catagory: productCatagory.valueAdded, options: customOptions.noOptions),
        Products(displayTitle: "Soup", cartName: "Soup", referenceName: "Soup", pic: "soup", catagory: productCatagory.valueAdded, options: customOptions.noOptions),
        //Products(displayTitle: "Sweet Carrots", cartName: "Sweet Carrot Jar", referenceName: "Sweet_Carrots", pic: "sweet_carrots", catagory: productCatagory.valueAdded, options: customOptions.noOptions), //delete maybe
        Products(displayTitle: "Zuchinni Relish", cartName: "Zuchini Relish Jar", referenceName: "Zuchini_Relish", pic: "zuchinni_relish", catagory: productCatagory.valueAdded, options: customOptions.noOptions),
        
        
        //productCatagory.retail
        Products(displayTitle: "Baba Ganoush", cartName: "Baba Ganoush", referenceName: "Baba_Ganoush", pic: "baba_ganoush", catagory: productCatagory.retail, options: customOptions.uniquePrice),
        Products(displayTitle: "Baguette", cartName: "Baguette", referenceName: "Baguette", pic: "baguette", catagory: productCatagory.retail, options: customOptions.noOptions),
        Products(displayTitle: "Beef Burgers", cartName: "Beef Burger Pack", referenceName: "Beef_Burgers", pic: "beef_burgers", catagory: productCatagory.retail, options: customOptions.noOptions),
        Products(displayTitle: "Beef Lasagna", cartName: "Beef Lasagana Meal", referenceName: "Beef_Lasagna", pic: "beef_lasagna", catagory: productCatagory.retail, options: customOptions.uniquePrice),
        Products(displayTitle: "Beef Sausage", cartName: "Beef Sausage Pack", referenceName: "Beef_Sausage", pic: "beef_sausage", catagory: productCatagory.retail, options: customOptions.uniquePrice),
        Products(displayTitle: "Butter Chicken Curry", cartName: "Butter Chicken Curry", referenceName: "Butter_Chicken_Curry", pic: "butter_chicken_curry", catagory: productCatagory.retail, options: customOptions.uniquePrice),
        Products(displayTitle: "Cheese", cartName: "Cheese Pack", referenceName: "Cheese", pic: "cheese", catagory: productCatagory.retail, options: customOptions.noOptions),
        Products(displayTitle: "Chicken", cartName: "Chicken", referenceName: "Chicken", pic: "chicken", catagory: productCatagory.retail, options: customOptions.noOptions),
        Products(displayTitle: "Cheese", cartName: "Cheese Pack", referenceName: "Cheese", pic: "cheese", catagory: productCatagory.retail, options: customOptions.noOptions),
        Products(displayTitle: "Chocolate Bar", cartName: "Chocolate Bar", referenceName: "Chocolate_Bar", pic: "giddy_yo", catagory: productCatagory.retail, options: customOptions.uniquePrice),
        Products(displayTitle: "Cinamon Cream Honey", cartName: "Cinamon Cream Honey Jar", referenceName: "Cinamon_Cream_Honey", pic: "cinamon_cream_honey", catagory: productCatagory.retail, options: customOptions.uniquePrice),
        Products(displayTitle: "Coffee", cartName: "Coffee Bean Bag", referenceName: "Coffee", pic: "coffee_beans", catagory: productCatagory.retail, options: customOptions.noOptions),
        Products(displayTitle: "Date Cookies", cartName: "Date Cookies", referenceName: "Date_Cookies", pic: "date_cookies", catagory: productCatagory.retail, options: customOptions.uniquePrice),
        Products(displayTitle: "Falafels", cartName: "Falafel Pack", referenceName: "Falafels", pic: "falafel", catagory: productCatagory.retail, options: customOptions.uniquePrice),
        Products(displayTitle: "French Loaf", cartName: "French Loaf", referenceName: "French_Loaf", pic: "french_loaf", catagory: productCatagory.retail, options: customOptions.uniquePrice),
        Products(displayTitle: "Ground Beef", cartName: "Ground Beef Pack", referenceName: "Ground_Beef", pic: "ground_beef", catagory: productCatagory.retail, options: customOptions.noOptions),
        Products(displayTitle: "Kabsa", cartName: "Kabsa", referenceName: "Kabsa", pic: "kabsa", catagory: productCatagory.retail, options: customOptions.uniquePrice),
        Products(displayTitle: "Lamb Lasagna", cartName: "Lamb Lasagna Meal", referenceName: "Lamb_Lasagna", pic: "lamb_lasagna", catagory: productCatagory.retail, options: customOptions.noOptions),
        Products(displayTitle: "Pickled Asparagus", cartName: "Pickled Asparagus Jar", referenceName: "Pickled_Asparagus", pic: "pickled_asparagus", catagory: productCatagory.retail, options: customOptions.noOptions),
        Products(displayTitle: "Pickled Cauliflower", cartName: "Pickled Cauliflower Jar", referenceName: "Pickled_Cauliflower", pic: "pickled_cauliflower", catagory: productCatagory.retail, options: customOptions.uniquePrice),
        Products(displayTitle: "Samosas", cartName: "Samosas", referenceName: "Samosas", pic: "samosas", catagory: productCatagory.retail, options: customOptions.uniquePrice),
        Products(displayTitle: "Stewing Beef", cartName: "Stewing Beef Pack", referenceName: "Stewing_Beef", pic: "stewing_beef", catagory: productCatagory.retail, options: customOptions.noOptions),
        Products(displayTitle: "T-Bone Steak", cartName: "T-Bone Steak", referenceName: "TBone_Steak", pic: "tbone_steak", catagory: productCatagory.retail, options: customOptions.uniquePrice),
        Products(displayTitle: "Turkey Pot Pie", cartName: "Turkey Pot Pie", referenceName: "Turkey_Pot_Pie", pic: "turkey_pot_pie", catagory: productCatagory.retail, options: customOptions.uniquePrice),
        Products(displayTitle: "Wildflower Honey", cartName: "Wildflower Honey Jar", referenceName: "Wildflower_Honey", pic: "wildflower_honey", catagory: productCatagory.retail, options: customOptions.noOptions),
        Products(displayTitle: "White Cream Honey", cartName: "White Cream Honey Jar", referenceName: "White_Cream_Honey", pic: "white_cream_honey", catagory: productCatagory.retail, options: customOptions.noOptions),
        Products(displayTitle: "Whole Chicken", cartName: "Whole Chicken", referenceName: "Whole_Chicken", pic: "whole_chicken", catagory: productCatagory.retail, options: customOptions.uniquePrice),
        Products(displayTitle: "Yalanji", cartName: "Yalanji", referenceName: "Yalanji", pic: "yalanji", catagory: productCatagory.retail, options: customOptions.uniquePrice),
    ]
}
