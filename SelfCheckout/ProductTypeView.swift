//
//  productTypesView.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-06-12.
//

import SwiftUI

struct ProductTypeView: View {
    let productVariation: ProductType
    var body: some View {
        VStack() {
            Image(productVariation.pic)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 150)
            Text(productVariation.productVariation).foregroundColor(.black)
            Text(productVariation.price)
        }.background(Rectangle().fill(Color.white).shadow(radius: 2))
    }
}

struct ProductTypeView_Previews: PreviewProvider {
    static var variationInfo = ProductType.variationData[0]
    static var previews: some View {
        ProductTypeView(productVariation: variationInfo)
            .previewLayout(.fixed(width: 100, height: 400))
    }
}
