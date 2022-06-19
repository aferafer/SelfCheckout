//
//  SwiftUIView.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-06-18.
//

import SwiftUI

struct AdminView: View {
    var scrums: [DailyScrum]
    //@ObservedObject var cartData
    
    @AppStorage("CarrotsVisible") var CarrotsVisible = true
    @AppStorage("HeadLettuceVisible") var HeadLettuceVisible = true
    @AppStorage("SaladGreensVisible") var SaladGreensVisible = true

        var body: some View {
            Button("Load settings") {
                print("loading")
            }
            Form {
                Section(header: Text("Product Availability")) {
                    Toggle(isOn: $CarrotsVisible) {Text("Carrots Visible?")}
                    Toggle(isOn: $HeadLettuceVisible) {Text("Head Lettuce Visible?")}
                    Toggle(isOn: $SaladGreensVisible) {Text("Salad Greens Visible?")}
                }
            }
            
            Form {
                Toggle(isOn: $CarrotsVisible) {Text("Carrots Visible?")}
                Toggle(isOn: $HeadLettuceVisible) {Text("Head Lettuce Visible?")}
                Toggle(isOn: $SaladGreensVisible) {Text("Salad Greens Visible?")}
            }
        }
}
