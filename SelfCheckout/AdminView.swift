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
    @ObservedObject var Switch: AppState
    func toReference(priceEnum: price) -> String {
        //converts a price Enum to a product reference String. Example: price.PCarrots returns "Carrots"
        var stringForm = priceEnum.rawValue
        stringForm.remove(at: stringForm.startIndex)
        return stringForm
    }
        
    
    
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
    //@AppStorage(price.PCarrots.rawValue) var CarrotsPrice = "3.25" //variations
    @AppStorage(price.PSmallCarrots.rawValue) var SmallCarrotsPrice = "3.25"
    @AppStorage(price.PLargeCarrots.rawValue) var LargeCarrotsPrice = "3.25"
    
    @AppStorage(price.PHead_Lettuce.rawValue) var HeadLettucePrice = "3.75"
    @AppStorage(price.PSalad_Greens.rawValue) var SaladGreensPrice = "5.25"
    @AppStorage(price.PKale.rawValue) var KalePrice = "5.50"
    @AppStorage(price.PSwiss_Chard.rawValue) var SwissChardPrice = "5.50"
    //@AppStorage(price.PBeets.rawValue) var BeetsPrice = "3.00" //variations
    @AppStorage(price.PStripedBeets.rawValue) var StripedBeetsPrice = "3.00"
    @AppStorage(price.PCylindraBeets.rawValue) var CylindraBeetsPrice = "3.00"
    @AppStorage(price.PGoldenBeets.rawValue) var GoldenBeetsPrice = "3.00"
    
    @AppStorage(price.PLeeks.rawValue) var LeeksPrice = "5.00"
    @AppStorage(price.PSpinach.rawValue) var SpinachPrice = "5.50"
    @AppStorage(price.PTomatoes.rawValue) var TomatoesPrice = "5.00"
    @AppStorage(price.PCherry_Tomatoes.rawValue) var CherryTomatoesPrice = "5.50"
    //@AppStorage(price.PPeppers.rawValue) var PeppersPrice = "3.00" //variations
    @AppStorage(price.PGreenPeppers.rawValue) var GreenPeppersPrice = "3.00"
    @AppStorage(price.PColoredPeppers.rawValue) var ColoredPeppersPrice = "3.00"
    
    @AppStorage(price.PEgg_Plant.rawValue) var EggPlantPrice = "1.75"
    @AppStorage(price.PCucumbers.rawValue) var CucumbersPrice = "1.75"
    @AppStorage(price.PParsley.rawValue) var ParsleyPrice = "3.00"
    @AppStorage(price.PCilantro.rawValue) var CilantroPrice = "3.00"
    @AppStorage(price.PDill.rawValue) var DillPrice = "3.00"
    @AppStorage(price.PBasil.rawValue) var BasilPrice = "3.00"
    @AppStorage(price.PFennel.rawValue) var FennelPrice = "3.50"
    @AppStorage(price.PKohlrabi.rawValue) var KohlrabiPrice = "3.75"
    @AppStorage(price.PGreen_Onions.rawValue) var GreenOnionsPrice = "3.00"
    @AppStorage(price.PGarlic.rawValue) var GarlicPrice = "3.00"
    @AppStorage(price.POnions.rawValue) var OnionsPrice = "1.75"
    @AppStorage(price.PSummer_Squash.rawValue) var SummerSquashPrice = "1.50"
    //@AppStorage(price.PMelons.rawValue) var MelonsPrice = "3.00" //variations
    @AppStorage(price.PSmallMelons.rawValue) var SmallMelonsPrice = "3.00"
    @AppStorage(price.PMediumMelons.rawValue) var MediumMelonsPrice = "3.00"
    @AppStorage(price.PLargeMelons.rawValue) var LargeMelonsPrice = "3.00"
    
    @AppStorage(price.PSnow_Peas.rawValue) var SnowPeasPrice = "4.00"
    @AppStorage(price.PMicrogreens.rawValue) var MicrogreensPrice = "4.75"
    @AppStorage(price.PRadishes.rawValue) var RadishesPrice = "3.00"
    @AppStorage(price.PTurnips.rawValue) var TurnipsPrice = "3.50"
    @AppStorage(price.PCabbage.rawValue) var CabbagePrice = "5.00"
    @AppStorage(price.PPotatoes.rawValue) var PotatoesPrice = "5.00"
    @AppStorage(price.PSalsa.rawValue) var SalsaPrice = "5.00"
    @AppStorage(price.PPhil_Sauce.rawValue) var PhilSaucePrice = "5.00"
    @AppStorage(price.PPickled_Onions.rawValue) var PickledOnionsPrice = "5.00"
    @AppStorage(price.PSoup.rawValue) var SoupPrice = "5.00"
    @AppStorage(price.PPickled_Beets.rawValue) var PickledBeetsPrice = "3.00"
    @AppStorage(price.PPickled_Carrots.rawValue) var PickledCarrotsPrice = "3.00"
    @AppStorage(price.PSweet_Carrots.rawValue) var SweetCarrotsPrice = "3.00"
    @AppStorage(price.PLamb_Lasagna.rawValue) var LambLasagnaPrice = "3.00"
    @AppStorage(price.PCarrot_Cake.rawValue) var CarrotCakePrice = "3.00"
    @AppStorage(price.PBaguette.rawValue) var BaguettePrice = "3.00"
    @AppStorage(price.PCheese.rawValue) var CheesePrice = "3.00"
    @AppStorage(price.PChicken.rawValue) var ChickenPrice = "3.00"
    @AppStorage(price.PCoffee.rawValue) var CoffeePrice = "3.00"
    @AppStorage(price.PGround_Beef.rawValue) var GroundBeefPrice = "3.00"
    @AppStorage(price.PStewing_Beef.rawValue) var StewingBeefPrice = "3.00"
    @AppStorage(price.PWhole_Chicken.rawValue) var WholeChickenPrice = "3.00"
    

    var body: some View {
        Spacer(minLength: 10)
        Button {
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
            
            cartData.priceDict[toReference(priceEnum: price.PSmallCarrots)] = SmallCarrotsPrice
            cartData.priceDict[toReference(priceEnum: price.PLargeCarrots)] = LargeCarrotsPrice
            cartData.priceDict[toReference(priceEnum: price.PHead_Lettuce)] = HeadLettucePrice
            cartData.priceDict[toReference(priceEnum: price.PSalad_Greens)] = SaladGreensPrice
            cartData.priceDict[toReference(priceEnum: price.PKale)] = KalePrice
            cartData.priceDict[toReference(priceEnum: price.PSwiss_Chard)] = SwissChardPrice
            cartData.priceDict[toReference(priceEnum: price.PStripedBeets)] = StripedBeetsPrice
            cartData.priceDict[toReference(priceEnum: price.PCylindraBeets)] = CylindraBeetsPrice
            cartData.priceDict[toReference(priceEnum: price.PGoldenBeets)] = GoldenBeetsPrice
            cartData.priceDict[toReference(priceEnum: price.PLeeks)] = LeeksPrice
            cartData.priceDict[toReference(priceEnum: price.PSpinach)] = SpinachPrice
            cartData.priceDict[toReference(priceEnum: price.PTomatoes)] = TomatoesPrice
            cartData.priceDict[toReference(priceEnum: price.PCherry_Tomatoes)] = CherryTomatoesPrice
            cartData.priceDict[toReference(priceEnum: price.PGreenPeppers)] = GreenPeppersPrice
            cartData.priceDict[toReference(priceEnum: price.PColoredPeppers)] = ColoredPeppersPrice
            cartData.priceDict[toReference(priceEnum: price.PEgg_Plant)] = EggPlantPrice
            cartData.priceDict[toReference(priceEnum: price.PCucumbers)] = CucumbersPrice
            cartData.priceDict[toReference(priceEnum: price.PParsley)] = ParsleyPrice
            cartData.priceDict[toReference(priceEnum: price.PCilantro)] = CilantroPrice
            cartData.priceDict[toReference(priceEnum: price.PDill)] = DillPrice
            cartData.priceDict[toReference(priceEnum: price.PBasil)] = BasilPrice
            cartData.priceDict[toReference(priceEnum: price.PFennel)] = FennelPrice
            cartData.priceDict[toReference(priceEnum: price.PKohlrabi)] = KohlrabiPrice
            cartData.priceDict[toReference(priceEnum: price.PGreen_Onions)] = GreenOnionsPrice
            cartData.priceDict[toReference(priceEnum: price.PGarlic)] = GarlicPrice
            cartData.priceDict[toReference(priceEnum: price.POnions)] = OnionsPrice
            cartData.priceDict[toReference(priceEnum: price.PSummer_Squash)] = SummerSquashPrice
            cartData.priceDict[toReference(priceEnum: price.PRadishes)] = RadishesPrice
            //cartData.priceDict[toReference(priceEnum: price.PSquash)] = SquashPrice
            cartData.priceDict[toReference(priceEnum: price.PSmallMelons)] = SmallMelonsPrice
            cartData.priceDict[toReference(priceEnum: price.PMediumMelons)] = MediumMelonsPrice
            cartData.priceDict[toReference(priceEnum: price.PLargeMelons)] = LargeMelonsPrice
            cartData.priceDict[toReference(priceEnum: price.PSnow_Peas)] = SnowPeasPrice
            cartData.priceDict[toReference(priceEnum: price.PMicrogreens)] = MicrogreensPrice
            //cartData.priceDict[toReference(priceEnum: price.PBeets)] = BeetsPrice
            cartData.priceDict[toReference(priceEnum: price.PTurnips)] = TurnipsPrice
            cartData.priceDict[toReference(priceEnum: price.PCabbage)] = CabbagePrice
            cartData.priceDict[toReference(priceEnum: price.PPotatoes)] = PotatoesPrice
            cartData.priceDict[toReference(priceEnum: price.PSalsa)] = SalsaPrice
            cartData.priceDict[toReference(priceEnum: price.PPhil_Sauce)] = PhilSaucePrice
            cartData.priceDict[toReference(priceEnum: price.PPickled_Onions)] = PickledOnionsPrice
            cartData.priceDict[toReference(priceEnum: price.PSoup)] = SoupPrice
            cartData.priceDict[toReference(priceEnum: price.PPickled_Beets)] = PickledBeetsPrice
            cartData.priceDict[toReference(priceEnum: price.PPickled_Carrots)] = PickledCarrotsPrice
            cartData.priceDict[toReference(priceEnum: price.PSweet_Carrots)] = SweetCarrotsPrice
            cartData.priceDict[toReference(priceEnum: price.PLamb_Lasagna)] = LambLasagnaPrice
            cartData.priceDict[toReference(priceEnum: price.PCarrot_Cake)] = CarrotCakePrice
            cartData.priceDict[toReference(priceEnum: price.PBaguette)] = BaguettePrice
            cartData.priceDict[toReference(priceEnum: price.PCheese)] = CheesePrice
            cartData.priceDict[toReference(priceEnum: price.PChicken)] = ChickenPrice
            cartData.priceDict[toReference(priceEnum: price.PCoffee)] = CoffeePrice
            cartData.priceDict[toReference(priceEnum: price.PGround_Beef)] = GroundBeefPrice
            cartData.priceDict[toReference(priceEnum: price.PStewing_Beef)] = StewingBeefPrice
            cartData.priceDict[toReference(priceEnum: price.PWhole_Chicken)] = WholeChickenPrice
            
            print(cartData.priceDict)
            Switch.switchToMainApp = true
        } label: {
            Text("Continue To App")
                .padding(10)
                .foregroundColor(Color.black)
                .background(Color.accentColor)
                .cornerRadius(12)
        }
        Spacer(minLength: 20)
        Text("Price and Availability Settings")
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
                    .padding(5)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0))
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
                    .padding(5)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0))
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
                    .padding(5)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0))
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
                    .padding(5)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0))
                    Group {
                        Toggle(isOn: $BaguetteVisible) {Text("Baguettes Visible?")}
                        Toggle(isOn: $CheeseVisible) {Text("Cheese Visible?")}
                        Toggle(isOn: $ChickenVisible) {Text("Chicken Visible?")}
                        Toggle(isOn: $CoffeeVisible) {Text("Coffee Visible?")}
                        Toggle(isOn: $GroundBeefVisible) {Text("Ground Beef Visible?")}
                        Toggle(isOn: $StewingBeefVisible) {Text("Stewing Beef Visible?")}
                        Toggle(isOn: $WholeChickenVisible) {Text("Whole Chicken Visible?")}
                    }
                    .padding(5)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0))
                }// close vStack
            } //close form
            
            Form {
                VStack {
                    Group {
                    HStack {
                        let cost = NumberFormatter().number(from: SmallMelonsPrice)?.doubleValue
                        Text("Small Melons Price: ")
                        TextField("Enter Item Price...", text: $SmallMelonsPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: MediumMelonsPrice)?.doubleValue
                        Text("Medium Melons Price: ")
                        TextField("Enter Item Price...", text: $MediumMelonsPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: LargeMelonsPrice)?.doubleValue
                        Text("Large Melons Price: ")
                        TextField("Enter Item Price...", text: $LargeMelonsPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    HStack {
                        let cost = NumberFormatter().number(from: DillPrice)?.doubleValue
                        Text("Dill Price: ")
                        TextField("Enter Item Price...", text: $DillPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: GarlicPrice)?.doubleValue
                        Text("Garlic Price: ")
                        TextField("Enter Item Price...", text: $GarlicPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: SnowPeasPrice)?.doubleValue
                        Text("Snow Peas Price: ")
                        TextField("Enter Item Price...", text: $SnowPeasPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: PotatoesPrice)?.doubleValue
                        Text("Potatoes Price: ")
                        TextField("Enter Item Price...", text: $PotatoesPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: SaladGreensPrice)?.doubleValue
                        Text("Salad Greens Price: ")
                        TextField("Enter Item Price...", text: $SaladGreensPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: LeeksPrice)?.doubleValue
                        Text("Leeks Price: ")
                        TextField("Enter Item Price...", text: $LeeksPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: EggPlantPrice)?.doubleValue
                        Text("Egg Plant Price: ")
                        TextField("Enter Item Price...", text: $EggPlantPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    } //end group
                    .padding(10)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0))
                    
                    Group {
                    HStack {
                        let cost = NumberFormatter().number(from: BasilPrice)?.doubleValue
                        Text("Basil Price: ")
                        TextField("Enter Item Price...", text: $BasilPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: OnionsPrice)?.doubleValue
                        Text("Onions Price: ")
                        TextField("Enter Item Price...", text: $OnionsPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: MicrogreensPrice)?.doubleValue
                        Text("Microgreens Price: ")
                        TextField("Enter Item Price...", text: $MicrogreensPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: HeadLettucePrice)?.doubleValue
                        Text("Head Lettuce Price: ")
                        TextField("Enter Item Price...", text: $HeadLettucePrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: SpinachPrice)?.doubleValue
                        Text("Spinach Price: ")
                        TextField("Enter Item Price...", text: $SpinachPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: CucumbersPrice)?.doubleValue
                        Text("Cucumbers Price: ")
                        TextField("Enter Item Price...", text: $CucumbersPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: FennelPrice)?.doubleValue
                        Text("Fennel Price: ")
                        TextField("Enter Item Price...", text: $FennelPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: SummerSquashPrice)?.doubleValue
                        Text("Summer Squash Price: ")
                        TextField("Enter Item Price...", text: $SummerSquashPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: RadishesPrice)?.doubleValue
                        Text("Radishes Price: ")
                        TextField("Enter Item Price...", text: $RadishesPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: KalePrice)?.doubleValue
                        Text("Kale Price: ")
                        TextField("Enter Item Price...", text: $KalePrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    } //end group
                    .padding(10)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0))
                    Group {
                    HStack {
                        let cost = NumberFormatter().number(from: TomatoesPrice)?.doubleValue
                        Text("BeefSteak Price: ")
                        TextField("Enter Item Price...", text: $TomatoesPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: ParsleyPrice)?.doubleValue
                        Text("Parsley Price: ")
                        TextField("Enter Item Price...", text: $ParsleyPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: KohlrabiPrice)?.doubleValue
                        Text("Kohlrabi Price: ")
                        TextField("Enter Item Price...", text: $KohlrabiPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: TurnipsPrice)?.doubleValue
                        Text("Turnips Price: ")
                        TextField("Enter Item Price...", text: $TurnipsPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: SwissChardPrice)?.doubleValue
                        Text("Swiss Chard Price: ")
                        TextField("Enter Item Price...", text: $SwissChardPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: CherryTomatoesPrice)?.doubleValue
                        Text("Cherry Tomatoes Price: ")
                        TextField("Enter Item Price...", text: $CherryTomatoesPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: CilantroPrice)?.doubleValue
                        Text("Cilantro Price: ")
                        TextField("Enter Item Price...", text: $CilantroPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: GreenOnionsPrice)?.doubleValue
                        Text("Green Onions Price: ")
                        TextField("Enter Item Price...", text: $GreenOnionsPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    } //end group
                    .padding(10)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0))
                    
                    Group {
                    HStack {
                        let cost = NumberFormatter().number(from: CabbagePrice)?.doubleValue
                        Text("Cabbage Price: ")
                        TextField("Enter Item Price...", text: $CabbagePrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: SalsaPrice)?.doubleValue
                        Text("Salsa Price: ")
                        TextField("Enter Item Price...", text: $SalsaPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: PickledCarrotsPrice)?.doubleValue
                        Text("Pickled Carrots Price: ")
                        TextField("Enter Item Price...", text: $PickledCarrotsPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: PhilSaucePrice)?.doubleValue
                        Text("Phil Sauce Price: ")
                        TextField("Enter Item Price...", text: $PhilSaucePrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: SweetCarrotsPrice)?.doubleValue
                        Text("Sweet Carrots Price: ")
                        TextField("Enter Item Price...", text: $SweetCarrotsPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: PickledOnionsPrice)?.doubleValue
                        Text("Picled Onions Price: ")
                        TextField("Enter Item Price...", text: $PickledOnionsPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: LambLasagnaPrice)?.doubleValue
                        Text("Lamb Lasagna Price: ")
                        TextField("Enter Item Price...", text: $LambLasagnaPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: SoupPrice)?.doubleValue
                        Text("Soup Price: ")
                        TextField("Enter Item Price...", text: $SoupPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: CarrotCakePrice)?.doubleValue
                        Text("Carrot Cake Price: ")
                        TextField("Enter Item Price...", text: $CarrotCakePrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    } //end Group
                    .padding(10)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0))
                    
                    Group {
                    HStack {
                        let cost = NumberFormatter().number(from: PickledBeetsPrice)?.doubleValue
                        Text("Pickled Beets Price: ")
                        TextField("Enter Item Price...", text: $PickledBeetsPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: BaguettePrice)?.doubleValue
                        Text("Baguette Price: ")
                        TextField("Enter Item Price...", text: $BaguettePrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: StewingBeefPrice)?.doubleValue
                        Text("Stewing Beef Price: ")
                        TextField("Enter Item Price...", text: $StewingBeefPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: CheesePrice)?.doubleValue
                        Text("Cheese Price: ")
                        TextField("Enter Item Price...", text: $CheesePrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: WholeChickenPrice)?.doubleValue
                        Text("Whole Chicken Price: ")
                        TextField("Enter Item Price...", text: $WholeChickenPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: CoffeePrice)?.doubleValue
                        Text("Coffee Price: ")
                        TextField("Enter Item Price...", text: $CoffeePrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: GroundBeefPrice)?.doubleValue
                        Text("Ground Beef Price: ")
                        TextField("Enter Item Price...", text: $GroundBeefPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }
                    }
                    
                    HStack {
                        let cost = NumberFormatter().number(from: ChickenPrice)?.doubleValue
                        Text("Chicken Price: ")
                        TextField("Enter Item Price...", text: $ChickenPrice)
                        if (cost == nil) {
                            Spacer()
                            Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                        }                    }
                    } // end Group
                    .padding(10)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0))
                    Group {
                        HStack {
                            let cost = NumberFormatter().number(from: SmallCarrotsPrice)?.doubleValue
                            Text("Small Carrot Bag Price: ")
                            TextField("Enter Item Price...", text: $SmallCarrotsPrice)
                            if (cost == nil) {
                                Spacer()
                                Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                            }
                        }
                        
                        HStack {
                            let cost = NumberFormatter().number(from: LargeCarrotsPrice)?.doubleValue
                            Text("Large Carrot Bag Price: ")
                            TextField("Enter Item Price...", text: $LargeCarrotsPrice)
                            if (cost == nil) {
                                Spacer()
                                Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                            }
                        }
                        
                        HStack {
                            let cost = NumberFormatter().number(from: GreenPeppersPrice)?.doubleValue
                            Text("Green Peppers Price: ")
                            TextField("Enter Item Price...", text: $GreenPeppersPrice)
                            if (cost == nil) {
                                Spacer()
                                Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                            }
                        }
                        
                        HStack {
                            let cost = NumberFormatter().number(from: ColoredPeppersPrice)?.doubleValue
                            Text("Colored Peppers Price: ")
                            TextField("Enter Item Price...", text: $ColoredPeppersPrice)
                            if (cost == nil) {
                                Spacer()
                                Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                            }
                        }
                        
                        HStack {
                            let cost = NumberFormatter().number(from: StripedBeetsPrice)?.doubleValue
                            Text("Striped Beets Price: ")
                            TextField("Enter Item Price...", text: $StripedBeetsPrice)
                            if (cost == nil) {
                                Spacer()
                                Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                            }
                        }
                        
                        HStack {
                            let cost = NumberFormatter().number(from: CylindraBeetsPrice)?.doubleValue
                            Text("Cylindra Beets Price: ")
                            TextField("Enter Item Price...", text: $CylindraBeetsPrice)
                            if (cost == nil) {
                                Spacer()
                                Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                            }
                        }
                        
                        HStack {
                            let cost = NumberFormatter().number(from: GoldenBeetsPrice)?.doubleValue
                            Text("Golden Beets Price: ")
                            TextField("Enter Item Price...", text: $GoldenBeetsPrice)
                            if (cost == nil) {
                                Spacer()
                                Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                            }
                        }
                        
                        HStack {
                            let cost = NumberFormatter().number(from: GroundBeefPrice)?.doubleValue
                            Text("Ground Beef Price: ")
                            TextField("Enter Item Price...", text: $GroundBeefPrice)
                            if (cost == nil) {
                                Spacer()
                                Text("Error. Please enter a valid price").foregroundColor(Color.red).bold()
                            }
                        }
                    } //end group
                    .padding(10)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0))
                
                } // Close Vstack for textfields
            } //close form for textfields
        } //close outer HStack
    } //close body
} //close view

extension AdminView {
    //the price Enum type has P as a prefix to all of its cases. So Carrots becomes PCarrots etc. This is to differentiate them from the isVisible Enum cases. These Enum types get converted into Strings and are the keys used to identify their values in app storage. The P prefix from the price Enum cases is removed before storing it as a String in PriceDict in CartData so that the Strings can be formatted in the same way as reference names for products.
    enum price: String {
        case PSmallCarrots
        case PLargeCarrots
        case PStripedBeets
        case PCylindraBeets
        case PGoldenBeets
        case PGreenPeppers
        case PColoredPeppers
        case PDill
        case PGarlic
        case PSnow_Peas
        case PPotatoes
        case PSalad_Greens
        case PLeeks
        case PEgg_Plant
        case PBasil
        case POnions
        case PMicrogreens
        case PHead_Lettuce
        case PSpinach
        case PCucumbers
        case PFennel
        case PSummer_Squash
        case PRadishes
        case PKale
        case PTomatoes
        case PParsley
        case PKohlrabi
        case PSquash
        case PTurnips
        case PSwiss_Chard
        case PCherry_Tomatoes
        case PCilantro
        case PGreen_Onions
        case PSmallMelons
        case PMediumMelons
        case PLargeMelons
        case PCabbage
        case PSalsa
        case PPickled_Carrots
        case PPhil_Sauce
        case PSweet_Carrots
        case PPickled_Onions
        case PLamb_Lasagna
        case PSoup
        case PCarrot_Cake
        case PPickled_Beets
        case PBaguette
        case PStewing_Beef
        case PCheese
        case PWhole_Chicken
        case PChicken
        case PCoffee
        case PGround_Beef
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
