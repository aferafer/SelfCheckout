//
//  CardView.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-05-29.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack() {
            Image(scrum.pic)
                .resizable()
                .scaledToFit()
                .frame(width: 140, height: 90)
            Text(scrum.displayTitle).foregroundColor(.black)
        }.background(Rectangle().fill(Color.white).shadow(radius: 2))
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: scrum)
            .previewLayout(.fixed(width: 100, height: 400))
    }
}
