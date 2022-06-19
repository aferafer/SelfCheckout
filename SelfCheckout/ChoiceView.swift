//
//  ChoiceView.swift
//  SelfCheckout
//
//  Created by Aidan Richards on 2022-06-19.
//

import SwiftUI

struct ChoiceView: View {
    var body: some View {
        NavigationView {
            Text("Welcome to Am Braigh Farm")
            ScrollView {
                NavigationLink(destination: ScrumsView(scrums: DailyScrum.sampleData, total: 0)) {
                    Text("Click here to continue to the app")
                }
                Spacer(minLength: 50)
                NavigationLink(destination: AdminView(scrums: DailyScrum.sampleData)) {
                    Text("Click here to go to the admin page")
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct ChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceView()
    }
}
