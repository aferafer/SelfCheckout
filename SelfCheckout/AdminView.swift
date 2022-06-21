//
//  SwiftUIView.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-06-18.
//

import SwiftUI

struct AdminView: View {
    var scrums: [DailyScrum]
    @ObservedObject var cartData: CheckoutClass
    
    
    //whether or not item is available and should be displayed
    @AppStorage(isVisible.Carrots.rawValue) var CarrotsVisible = true
    @AppStorage(isVisible.Head_Lettuce.rawValue) var HeadLettuceVisible = true
    @AppStorage(isVisible.Salad_Greens.rawValue) var SaladGreensVisible = true
    @AppStorage(isVisible.Kale.rawValue) var KaleVisible = true
    @AppStorage(isVisible.Swiss_Chard.rawValue) var SwissChardVisible = true
    @AppStorage(isVisible.Beets.rawValue) var BeetsVisible = true
    @AppStorage(isVisible.Leeks.rawValue) var LeeksVisible = true
    @AppStorage(isVisible.Spinach.rawValue) var SpinachVisible = true
    @AppStorage(isVisible.Tomatoes.rawValue) var TomatoesVisible = true
    @AppStorage(isVisible.Cherry_Tomatoes.rawValue) var CherryTomatoesVisible = true
    @AppStorage(isVisible.Peppers.rawValue) var PeppersVisible = true
    @AppStorage(isVisible.Egg_Plant.rawValue) var EggPlantVisible = true
    @AppStorage(isVisible.Cucumbers.rawValue) var CucumbersVisible = true
    @AppStorage(isVisible.Parsley.rawValue) var ParsleyVisible = true
    @AppStorage(isVisible.Cilantro.rawValue) var CilantroVisible = true
    @AppStorage(isVisible.Dill.rawValue) var DillVisible = true
    @AppStorage(isVisible.Basil.rawValue) var BasilVisible = true
    @AppStorage(isVisible.Fennel.rawValue) var FennelVisible = true
    @AppStorage(isVisible.Kohlrabi.rawValue) var KohlrabiVisible = true
    @AppStorage(isVisible.Green_Onions.rawValue) var GreenOnionsVisible = true
    @AppStorage(isVisible.Garlic.rawValue) var GarlicVisible = true
    @AppStorage(isVisible.Onions.rawValue) var OnionsVisible = true
    @AppStorage(isVisible.Summer_Squash.rawValue) var SummerSquashVisible = true
    @AppStorage(isVisible.Squash.rawValue) var SquashVisible = true
    @AppStorage(isVisible.Melons.rawValue) var MelonsVisible = true
    @AppStorage(isVisible.Snow_Peas.rawValue) var SnowPeasVisible = true
    @AppStorage(isVisible.Microgreens.rawValue) var MicrogreensVisible = true
    @AppStorage(isVisible.Radishes.rawValue) var RadishesVisible = true
    @AppStorage(isVisible.Turnips.rawValue) var TurnipsVisible = true
    @AppStorage(isVisible.Cabbage.rawValue) var CabbageVisible = true
    @AppStorage(isVisible.Potatoes.rawValue) var PotatoesVisible = true
    @AppStorage(isVisible.Salsa.rawValue) var SalsaVisible = true
    @AppStorage(isVisible.Phil_Sauce.rawValue) var PhilSauceVisible = true
    @AppStorage(isVisible.Pickled_Onions.rawValue) var PickledOnionsVisible = true
    @AppStorage(isVisible.Soup.rawValue) var SoupVisible = true
    @AppStorage(isVisible.Pickled_Beets.rawValue) var PickledBeetsVisible = true
    @AppStorage(isVisible.Pickled_Carrots.rawValue) var PickledCarrotsVisible = true
    @AppStorage(isVisible.Sweet_Carrots.rawValue) var SweetCarrotsVisible = true
    @AppStorage(isVisible.Lamb_Lasagna.rawValue) var LambLasagnaVisible = true
    @AppStorage(isVisible.Carrot_Cake.rawValue) var CarrotCakeVisible = true
    @AppStorage(isVisible.Baguette.rawValue) var BaguetteVisible = true
    @AppStorage(isVisible.Cheese.rawValue) var CheeseVisible = true
    @AppStorage(isVisible.Chicken.rawValue) var ChickenVisible = true
    @AppStorage(isVisible.Coffee.rawValue) var CoffeeVisible = true
    @AppStorage(isVisible.Ground_Beef.rawValue) var GroundBeefVisible = true
    @AppStorage(isVisible.Stewing_Beef.rawValue) var StewingBeefVisible = true
    @AppStorage(isVisible.Whole_Chicken.rawValue) var WholeChickenVisible = true
    
    //item prices
    @AppStorage(price.P_carrots.rawValue) var CarrotsPrice = "3.25" //variations
    @AppStorage(price.P_headLettuce.rawValue) var HeadLettucePrice = "3.75"
    @AppStorage(price.P_saladGreens.rawValue) var SaladGreensPrice = "5.25"
    @AppStorage(price.P_kale.rawValue) var KalePrice = "5.50"
    @AppStorage(price.P_swissChard.rawValue) var SwissChardPrice = "5.50"
    @AppStorage(price.P_beets.rawValue) var BeetsPrice = "3.00" //variations
    @AppStorage(price.P_leeks.rawValue) var LeeksPrice = "5.00"
    @AppStorage(price.P_spinach.rawValue) var SpinachPrice = "5.50"
    @AppStorage(price.P_tomatoes.rawValue) var TomatoesPrice = "5.00"
    @AppStorage(price.P_cherryTomatoes.rawValue) var CherryTomatoesPrice = "5.50"
    @AppStorage(price.P_peppers.rawValue) var PeppersPrice = "3.00" //variations
    @AppStorage(price.P_eggPlant.rawValue) var EggPlantPrice = "1.75"
    @AppStorage(price.P_cucumbers.rawValue) var CucumbersPrice = "1.75"
    @AppStorage(price.P_parsley.rawValue) var ParsleyPrice = "3.00"
    @AppStorage(price.P_cilantro.rawValue) var CilantroPrice = "3.00"
    @AppStorage(price.P_dill.rawValue) var DillPrice = "3.00"
    @AppStorage(price.P_basil.rawValue) var BasilPrice = "3.00"
    @AppStorage(price.P_fennel.rawValue) var FennelPrice = "3.50"
    @AppStorage(price.P_kohlrabi.rawValue) var KohlrabiPrice = "3.75"
    @AppStorage(price.P_greenOnions.rawValue) var GreenOnionsPrice = "3.00"
    @AppStorage(price.P_garlic.rawValue) var GarlicPrice = "3.00"
    @AppStorage(price.P_onions.rawValue) var OnionsPrice = "1.75"
    @AppStorage(price.P_summerSquash.rawValue) var SummerSquashPrice = "1.50"
    @AppStorage(price.P_squash.rawValue) var SquashPrice = "1.50"
    @AppStorage(price.P_melons.rawValue) var MelonsPrice = "3.00" //variations
    @AppStorage(price.P_snowPeas.rawValue) var SnowPeasPrice = "4.00"
    @AppStorage(price.P_microgreens.rawValue) var MicrogreensPrice = "4.75"
    @AppStorage(price.P_radishes.rawValue) var RadishesPrice = "3.00"
    @AppStorage(price.P_turnips.rawValue) var TurnipsPrice = "3.50"
    @AppStorage(price.P_cabbage.rawValue) var CabbagePrice = "5.00"
    @AppStorage(price.P_potatoes.rawValue) var PotatoesPrice = "5.00"
    @AppStorage(price.P_salsa.rawValue) var SalsaPrice = "5.00"
    @AppStorage(price.P_philSauce.rawValue) var PhilSaucePrice = "5.00"
    @AppStorage(price.P_pickledOnions.rawValue) var PickledOnionsPrice = "5.00"
    @AppStorage(price.P_soup.rawValue) var SoupPrice = "5.00"
    @AppStorage(price.P_pickledBeets.rawValue) var PickledBeetsPrice = "3.00"
    @AppStorage(price.P_pickledCarrots.rawValue) var PickledCarrotsPrice = "3.00"
    @AppStorage(price.P_sweetCarrots.rawValue) var SweetCarrotsPrice = "3.00"
    @AppStorage(price.P_lambLasagna.rawValue) var LambLasagnaPrice = "3.00"
    @AppStorage(price.P_carrotCake.rawValue) var CarrotCakePrice = "3.00"
    @AppStorage(price.P_baguette.rawValue) var BaguettePrice = "3.00"
    @AppStorage(price.P_cheese.rawValue) var CheesePrice = "3.00"
    @AppStorage(price.P_chicken.rawValue) var ChickenPrice = "3.00"
    @AppStorage(price.P_coffee.rawValue) var CoffeePrice = "3.00"
    @AppStorage(price.P_groundBeef.rawValue) var GroundBeefPrice = "3.00"
    @AppStorage(price.P_stewingBeef.rawValue) var StewingBeefPrice = "3.00"
    @AppStorage(price.P_wholeChicken.rawValue) var WholeChickenPrice = "3.00"
    

    var body: some View {
        //var prices = [WholeChickenPrice, GroundBeefPrice, StewingBeefPrice, CoffeePrice, ChickenPrice, CheesePrice]
        Button("Load settings") {
            print("loading")
            cartData.isAvailable[isVisible.Carrots.rawValue] = CarrotsVisible
            cartData.isAvailable[isVisible.Head_Lettuce.rawValue] = HeadLettuceVisible
            cartData.isAvailable[isVisible.Salad_Greens.rawValue] = SaladGreensVisible
            cartData.isAvailable[isVisible.Kale.rawValue] = KaleVisible
            cartData.isAvailable[isVisible.Swiss_Chard.rawValue] = SwissChardVisible
            cartData.isAvailable[isVisible.Beets.rawValue] = BeetsVisible
            cartData.isAvailable[isVisible.Leeks.rawValue] = LeeksVisible
            cartData.isAvailable[isVisible.Spinach.rawValue] = SpinachVisible
            cartData.isAvailable[isVisible.Tomatoes.rawValue] = TomatoesVisible
            cartData.isAvailable[isVisible.Cherry_Tomatoes.rawValue] = CherryTomatoesVisible
            cartData.isAvailable[isVisible.Peppers.rawValue] = PeppersVisible
            cartData.isAvailable[isVisible.Egg_Plant.rawValue] = EggPlantVisible
            cartData.isAvailable[isVisible.Cucumbers.rawValue] = CucumbersVisible
            cartData.isAvailable[isVisible.Parsley.rawValue] = ParsleyVisible
            cartData.isAvailable[isVisible.Cilantro.rawValue] = CilantroVisible
            cartData.isAvailable[isVisible.Dill.rawValue] = DillVisible
            cartData.isAvailable[isVisible.Basil.rawValue] = BasilVisible
            cartData.isAvailable[isVisible.Fennel.rawValue] = FennelVisible
            cartData.isAvailable[isVisible.Kohlrabi.rawValue] = KohlrabiVisible
            cartData.isAvailable[isVisible.Green_Onions.rawValue] = GreenOnionsVisible
            cartData.isAvailable[isVisible.Garlic.rawValue] = GarlicVisible
            cartData.isAvailable[isVisible.Onions.rawValue] = OnionsVisible
            cartData.isAvailable[isVisible.Summer_Squash.rawValue] = SummerSquashVisible
            cartData.isAvailable[isVisible.Radishes.rawValue] = RadishesVisible
            cartData.isAvailable[isVisible.Squash.rawValue] = SquashVisible
            cartData.isAvailable[isVisible.Melons.rawValue] = MelonsVisible
            cartData.isAvailable[isVisible.Snow_Peas.rawValue] = SnowPeasVisible
            cartData.isAvailable[isVisible.Microgreens.rawValue] = MicrogreensVisible
            cartData.isAvailable[isVisible.Beets.rawValue] = BeetsVisible
            cartData.isAvailable[isVisible.Turnips.rawValue] = TurnipsVisible
            cartData.isAvailable[isVisible.Cabbage.rawValue] = CabbageVisible
            cartData.isAvailable[isVisible.Potatoes.rawValue] = PotatoesVisible
            cartData.isAvailable[isVisible.Salsa.rawValue] = SalsaVisible
            cartData.isAvailable[isVisible.Phil_Sauce.rawValue] = PhilSauceVisible
            cartData.isAvailable[isVisible.Pickled_Onions.rawValue] = PickledOnionsVisible
            cartData.isAvailable[isVisible.Soup.rawValue] = SoupVisible
            cartData.isAvailable[isVisible.Pickled_Beets.rawValue] = PickledBeetsVisible
            cartData.isAvailable[isVisible.Pickled_Carrots.rawValue] = PickledCarrotsVisible
            cartData.isAvailable[isVisible.Sweet_Carrots.rawValue] = SweetCarrotsVisible
            cartData.isAvailable[isVisible.Lamb_Lasagna.rawValue] = LambLasagnaVisible
            cartData.isAvailable[isVisible.Carrot_Cake.rawValue] = CarrotCakeVisible
            cartData.isAvailable[isVisible.Baguette.rawValue] = BaguetteVisible
            cartData.isAvailable[isVisible.Cheese.rawValue] = CheeseVisible
            cartData.isAvailable[isVisible.Chicken.rawValue] = ChickenVisible
            cartData.isAvailable[isVisible.Coffee.rawValue] = CoffeeVisible
            cartData.isAvailable[isVisible.Ground_Beef.rawValue] = GroundBeefVisible
            cartData.isAvailable[isVisible.Stewing_Beef.rawValue] = StewingBeefVisible
            cartData.isAvailable[isVisible.Whole_Chicken.rawValue] = WholeChickenVisible
            
            print(cartData.isAvailable)
            
            cartData.priceDict[price.P_carrots.rawValue] = CarrotsPrice
            cartData.priceDict[price.P_headLettuce.rawValue] = HeadLettucePrice
            cartData.priceDict[price.P_saladGreens.rawValue] = SaladGreensPrice
            cartData.priceDict[price.P_kale.rawValue] = KalePrice
            cartData.priceDict[price.P_swissChard.rawValue] = SwissChardPrice
            cartData.priceDict[price.P_beets.rawValue] = BeetsPrice
            cartData.priceDict[price.P_leeks.rawValue] = LeeksPrice
            cartData.priceDict[price.P_spinach.rawValue] = SpinachPrice
            cartData.priceDict[price.P_tomatoes.rawValue] = TomatoesPrice
            cartData.priceDict[price.P_cherryTomatoes.rawValue] = CherryTomatoesPrice
            cartData.priceDict[price.P_peppers.rawValue] = PeppersPrice
            cartData.priceDict[price.P_eggPlant.rawValue] = EggPlantPrice
            cartData.priceDict[price.P_cucumbers.rawValue] = CucumbersPrice
            cartData.priceDict[price.P_parsley.rawValue] = ParsleyPrice
            cartData.priceDict[price.P_cilantro.rawValue] = CilantroPrice
            cartData.priceDict[price.P_dill.rawValue] = DillPrice
            cartData.priceDict[price.P_basil.rawValue] = BasilPrice
            cartData.priceDict[price.P_fennel.rawValue] = FennelPrice
            cartData.priceDict[price.P_kohlrabi.rawValue] = KohlrabiPrice
            cartData.priceDict[price.P_greenOnions.rawValue] = GreenOnionsPrice
            cartData.priceDict[price.P_garlic.rawValue] = GarlicPrice
            cartData.priceDict[price.P_onions.rawValue] = OnionsPrice
            cartData.priceDict[price.P_summerSquash.rawValue] = SummerSquashPrice
            cartData.priceDict[price.P_radishes.rawValue] = RadishesPrice
            cartData.priceDict[price.P_squash.rawValue] = SquashPrice
            cartData.priceDict[price.P_melons.rawValue] = MelonsPrice
            cartData.priceDict[price.P_snowPeas.rawValue] = SnowPeasPrice
            cartData.priceDict[price.P_microgreens.rawValue] = MicrogreensPrice
            cartData.priceDict[price.P_beets.rawValue] = BeetsPrice
            cartData.priceDict[price.P_turnips.rawValue] = TurnipsPrice
            cartData.priceDict[price.P_cabbage.rawValue] = CabbagePrice
            cartData.priceDict[price.P_potatoes.rawValue] = PotatoesPrice
            cartData.priceDict[price.P_salsa.rawValue] = SalsaPrice
            cartData.priceDict[price.P_philSauce.rawValue] = PhilSaucePrice
            cartData.priceDict[price.P_pickledOnions.rawValue] = PickledOnionsPrice
            cartData.priceDict[price.P_soup.rawValue] = SoupPrice
            cartData.priceDict[price.P_pickledBeets.rawValue] = PickledBeetsPrice
            cartData.priceDict[price.P_pickledCarrots.rawValue] = PickledCarrotsPrice
            cartData.priceDict[price.P_sweetCarrots.rawValue] = SweetCarrotsPrice
            cartData.priceDict[price.P_lambLasagna.rawValue] = LambLasagnaPrice
            cartData.priceDict[price.P_carrotCake.rawValue] = CarrotCakePrice
            cartData.priceDict[price.P_baguette.rawValue] = BaguettePrice
            cartData.priceDict[price.P_cheese.rawValue] = CheesePrice
            cartData.priceDict[price.P_chicken.rawValue] = ChickenPrice
            cartData.priceDict[price.P_coffee.rawValue] = CoffeePrice
            cartData.priceDict[price.P_groundBeef.rawValue] = GroundBeefPrice
            cartData.priceDict[price.P_stewingBeef.rawValue] = StewingBeefPrice
            cartData.priceDict[price.P_wholeChicken.rawValue] = WholeChickenPrice
            
            print(cartData.priceDict)
        } //close button
        HStack { //outmost HStack to make prices and visibility toggles side by side
            Form {
                VStack {
                    Group {
                        Toggle(isOn: $CarrotsVisible) {Text("Carrots Visible?")}
                        Toggle(isOn: $HeadLettuceVisible) {Text("Head Lettuce Visible?")}
                        Toggle(isOn: $SaladGreensVisible) {Text("Salad Greens Visible?")}
                        Toggle(isOn: $KaleVisible) {Text("Kale Visible?")}
                        Toggle(isOn: $SwissChardVisible) {Text("Swiss Chard Visible?")}
                        Toggle(isOn: $BeetsVisible) {Text("Beets Visible?")}
                        Toggle(isOn: $LeeksVisible) {Text("Leeks Visible?")}
                        Toggle(isOn: $SpinachVisible) {Text("Spinach Visible?")}
                        Toggle(isOn: $TomatoesVisible) {Text("Tomatoes Visible?")}
                        Toggle(isOn: $CherryTomatoesVisible) {Text("Cherry Tomatoes Visible?")}
                    }
                    Group {
                        Toggle(isOn: $PeppersVisible) {Text("Peppers Visible?")}
                        Toggle(isOn: $EggPlantVisible) {Text("Egg Plant Visible?")}
                        Toggle(isOn: $CucumbersVisible) {Text("Cucumbers Visible?")}
                        Toggle(isOn: $ParsleyVisible) {Text("Parsley Visible?")}
                        Toggle(isOn: $CilantroVisible) {Text("Cilantro Visible?")}
                        Toggle(isOn: $DillVisible) {Text("Dill Visible?")}
                        Toggle(isOn: $BasilVisible) {Text("Basil Visible?")}
                        Toggle(isOn: $FennelVisible) {Text("Fennel Visible?")}
                        Toggle(isOn: $KohlrabiVisible) {Text("Kohlrabi Visible?")}
                        Toggle(isOn: $GreenOnionsVisible) {Text("GreenOnions Visible?")}
                    }
                    Group {
                        Toggle(isOn: $GarlicVisible) {Text("Garlic Visible?")}
                        Toggle(isOn: $OnionsVisible) {Text("Onions Visible?")}
                        Toggle(isOn: $SummerSquashVisible) {Text("Summer Squash Visible?")}
                        Toggle(isOn: $SquashVisible) {Text("Squash Visible?")}
                        Toggle(isOn: $MelonsVisible) {Text("Melons Visible?")}
                        Toggle(isOn: $SnowPeasVisible) {Text("Snow Peas Visible?")}
                        Toggle(isOn: $MicrogreensVisible) {Text("Microgreens Visible?")}
                        Toggle(isOn: $RadishesVisible) {Text("Radishes Visible?")}
                        Toggle(isOn: $TurnipsVisible) {Text("Turnips Visible?")}
                        Toggle(isOn: $CabbageVisible) {Text("Cabbage Visible?")}
                    }
                    Group {
                        Toggle(isOn: $PotatoesVisible) {Text("Potatoes Visible?")}
                        Toggle(isOn: $SalsaVisible) {Text("Salsa Visible?")}
                        Toggle(isOn: $PhilSauceVisible) {Text("Phil Sauce Visible?")}
                        Toggle(isOn: $PickledOnionsVisible) {Text("Pickled Onions Visible?")}
                        Toggle(isOn: $SoupVisible) {Text("Soup Visible?")}
                        Toggle(isOn: $PickledBeetsVisible) {Text("Pickled Beets Visible?")}
                        Toggle(isOn: $PickledCarrotsVisible) {Text("Pickled Carrots Visible?")}
                        Toggle(isOn: $SweetCarrotsVisible) {Text("Sweet Carrots Visible?")}
                        Toggle(isOn: $LambLasagnaVisible) {Text("Lamb Lasagna Visible?")}
                        Toggle(isOn: $CarrotCakeVisible) {Text("Carrot Cake Visible?")}
                    }
                    Group {
                        Toggle(isOn: $BaguetteVisible) {Text("Baguettes Visible?")}
                        Toggle(isOn: $CheeseVisible) {Text("Cheese Visible?")}
                        Toggle(isOn: $ChickenVisible) {Text("Chicken Visible?")}
                        Toggle(isOn: $CoffeeVisible) {Text("Coffee Visible?")}
                        Toggle(isOn: $GroundBeefVisible) {Text("Ground Beef Visible?")}
                        Toggle(isOn: $StewingBeefVisible) {Text("Stewing Beef Visible?")}
                        Toggle(isOn: $WholeChickenVisible) {Text("Whole Chicken Visible?")}
                    }
                }// close vStack
            } //close form
            
            Form {
                VStack {
                    Group {
                    HStack {
                        let cost = NumberFormatter().number(from: CarrotsPrice)?.doubleValue
                        Text("Carrots Price: ")
                        TextField("Enter Item Price...", text: $CarrotsPrice).padding()
                        if (cost == nil) {
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                        
                    HStack {
                        let cost = NumberFormatter().number(from: BeetsPrice)?.doubleValue
                        Text("Beets Price: ")
                        TextField("Enter Item Price...", text: $BeetsPrice).padding()
                        if (cost == nil) {
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: PeppersPrice)?.doubleValue
                        Text("Peppers Price: ")
                        TextField("Enter Item Price...", text: $PeppersPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: DillPrice)?.doubleValue
                        Text("Dill Price: ")
                        TextField("Enter Item Price...", text: $DillPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: GarlicPrice)?.doubleValue
                        Text("Garlic Price: ")
                        TextField("Enter Item Price...", text: $GarlicPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: SnowPeasPrice)?.doubleValue
                        Text("Snow Peas Price: ")
                        TextField("Enter Item Price...", text: $SnowPeasPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: PotatoesPrice)?.doubleValue
                        Text("Potatoes Price: ")
                        TextField("Enter Item Price...", text: $PotatoesPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: SaladGreensPrice)?.doubleValue
                        Text("Salad Greens Price: ")
                        TextField("Enter Item Price...", text: $SaladGreensPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: LeeksPrice)?.doubleValue
                        Text("Leeks Price: ")
                        TextField("Enter Item Price...", text: $LeeksPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: EggPlantPrice)?.doubleValue
                        Text("Egg Plant Price: ")
                        TextField("Enter Item Price...", text: $EggPlantPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    } //end group
                    
                    Group {
                    HStack {
                        let cost = NumberFormatter().number(from: BasilPrice)?.doubleValue
                        Text("Basil Price: ")
                        TextField("Enter Item Price...", text: $BasilPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: OnionsPrice)?.doubleValue
                        Text("Onions Price: ")
                        TextField("Enter Item Price...", text: $OnionsPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: MicrogreensPrice)?.doubleValue
                        Text("Microgreens Price: ")
                        TextField("Enter Item Price...", text: $MicrogreensPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: HeadLettucePrice)?.doubleValue
                        Text("Head Lettuce Price: ")
                        TextField("Enter Item Price...", text: $HeadLettucePrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: SpinachPrice)?.doubleValue
                        Text("Spinach Price: ")
                        TextField("Enter Item Price...", text: $SpinachPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: CucumbersPrice)?.doubleValue
                        Text("Cucumbers Price: ")
                        TextField("Enter Item Price...", text: $CucumbersPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: FennelPrice)?.doubleValue
                        Text("Fennel Price: ")
                        TextField("Enter Item Price...", text: $FennelPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: SummerSquashPrice)?.doubleValue
                        Text("Summer Squash Price: ")
                        TextField("Enter Item Price...", text: $SummerSquashPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: RadishesPrice)?.doubleValue
                        Text("Radishes Price: ")
                        TextField("Enter Item Price...", text: $RadishesPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: KalePrice)?.doubleValue
                        Text("Kale Price: ")
                        TextField("Enter Item Price...", text: $KalePrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    } //end group
                    Group {
                    HStack {
                        let cost = NumberFormatter().number(from: TomatoesPrice)?.doubleValue
                        Text("BeefSteak Price: ")
                        TextField("Enter Item Price...", text: $TomatoesPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: ParsleyPrice)?.doubleValue
                        Text("Parsley Price: ")
                        TextField("Enter Item Price...", text: $ParsleyPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: KohlrabiPrice)?.doubleValue
                        Text("Kohlrabi Price: ")
                        TextField("Enter Item Price...", text: $KohlrabiPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: TurnipsPrice)?.doubleValue
                        Text("Turnips Price: ")
                        TextField("Enter Item Price...", text: $TurnipsPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: SwissChardPrice)?.doubleValue
                        Text("Swiss Chard Price: ")
                        TextField("Enter Item Price...", text: $SwissChardPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: CherryTomatoesPrice)?.doubleValue
                        Text("Cherry Tomatoes Price: ")
                        TextField("Enter Item Price...", text: $CherryTomatoesPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: CilantroPrice)?.doubleValue
                        Text("Cilantro Price: ")
                        TextField("Enter Item Price...", text: $CilantroPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: GreenOnionsPrice)?.doubleValue
                        Text("Green Onions Price: ")
                        TextField("Enter Item Price...", text: $GreenOnionsPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    } //end group
                    
                    Group {
                    HStack {
                        let cost = NumberFormatter().number(from: MelonsPrice)?.doubleValue
                        Text("Melons Price: ")
                        TextField("Enter Item Price...", text: $MelonsPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: CabbagePrice)?.doubleValue
                        Text("Cabbage Price: ")
                        TextField("Enter Item Price...", text: $CabbagePrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: SalsaPrice)?.doubleValue
                        Text("Salsa Price: ")
                        TextField("Enter Item Price...", text: $SalsaPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: PickledCarrotsPrice)?.doubleValue
                        Text("Pickled Carrots Price: ")
                        TextField("Enter Item Price...", text: $PickledCarrotsPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: PhilSaucePrice)?.doubleValue
                        Text("Phil Sauce Price: ")
                        TextField("Enter Item Price...", text: $PhilSaucePrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: SweetCarrotsPrice)?.doubleValue
                        Text("Sweet Carrots Price: ")
                        TextField("Enter Item Price...", text: $SweetCarrotsPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: PickledOnionsPrice)?.doubleValue
                        Text("Picled Onions Price: ")
                        TextField("Enter Item Price...", text: $PickledOnionsPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: LambLasagnaPrice)?.doubleValue
                        Text("Lamb Lasagna Price: ")
                        TextField("Enter Item Price...", text: $LambLasagnaPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: SoupPrice)?.doubleValue
                        Text("Soup Price: ")
                        TextField("Enter Item Price...", text: $SoupPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: CarrotCakePrice)?.doubleValue
                        Text("Carrot Cake Price: ")
                        TextField("Enter Item Price...", text: $CarrotCakePrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    } //end Group
                    
                    Group {
                    HStack {
                        let cost = NumberFormatter().number(from: PickledBeetsPrice)?.doubleValue
                        Text("Pickled Beets Price: ")
                        TextField("Enter Item Price...", text: $PickledBeetsPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: BaguettePrice)?.doubleValue
                        Text("Baguette Price: ")
                        TextField("Enter Item Price...", text: $BaguettePrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: StewingBeefPrice)?.doubleValue
                        Text("Stewing Beef Price: ")
                        TextField("Enter Item Price...", text: $StewingBeefPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: CheesePrice)?.doubleValue
                        Text("Cheese Price: ")
                        TextField("Enter Item Price...", text: $CheesePrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: WholeChickenPrice)?.doubleValue
                        Text("Whole Chicken Price: ")
                        TextField("Enter Item Price...", text: $WholeChickenPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: CoffeePrice)?.doubleValue
                        Text("Coffee Price: ")
                        TextField("Enter Item Price...", text: $CoffeePrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: GroundBeefPrice)?.doubleValue
                        Text("Ground Beef Price: ")
                        TextField("Enter Item Price...", text: $GroundBeefPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: ChickenPrice)?.doubleValue
                        Text("Chicken Price: ")
                        TextField("Enter Item Price...", text: $ChickenPrice).padding()
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }                    }
                    } // end Group
                
                } // Close Vstack for textfields
            } //close form for textfields
        } //close outer HStack
    } //close body
} //close view

extension AdminView {
    enum price: String {
        case P_carrots
        case P_beets
        case P_peppers
        case P_dill
        case P_garlic
        case P_snowPeas
        case P_potatoes
        case P_saladGreens
        case P_leeks
        case P_eggPlant
        case P_basil
        case P_onions
        case P_microgreens
        case P_headLettuce
        case P_spinach
        case P_cucumbers
        case P_fennel
        case P_summerSquash
        case P_radishes
        case P_kale
        case P_tomatoes
        case P_parsley
        case P_kohlrabi
        case P_squash
        case P_turnips
        case P_swissChard
        case P_cherryTomatoes
        case P_cilantro
        case P_greenOnions
        case P_melons
        case P_cabbage
        case P_salsa
        case P_pickledCarrots
        case P_philSauce
        case P_sweetCarrots
        case P_pickledOnions
        case P_lambLasagna
        case P_soup
        case P_carrotCake
        case P_pickledBeets
        case P_baguette
        case P_stewingBeef
        case P_cheese
        case P_wholeChicken
        case P_chicken
        case P_coffee
        case P_groundBeef
    }
    
    enum isVisible: String {
        case Carrots
        case Beets
        case Peppers
        case Dill
        case Garlic
        case Snow_Peas
        case Potatoes
        case Salad_Greens
        case Leeks
        case Egg_Plant
        case Basil
        case Onions
        case Microgreens
        case Head_Lettuce
        case Spinach
        case Cucumbers
        case Fennel
        case Summer_Squash
        case Radishes
        case Kale
        case Tomatoes
        case Parsley
        case Kohlrabi
        case Squash
        case Turnips
        case Swiss_Chard
        case Cherry_Tomatoes
        case Cilantro
        case Green_Onions
        case Melons
        case Cabbage
        case Salsa
        case Pickled_Carrots
        case Phil_Sauce
        case Sweet_Carrots
        case Pickled_Onions
        case Lamb_Lasagna
        case Soup
        case Carrot_Cake
        case Pickled_Beets
        case Baguette
        case Stewing_Beef
        case Cheese
        case Whole_Chicken
        case Chicken
        case Coffee
        case Ground_Beef
    }
}
