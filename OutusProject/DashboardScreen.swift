//
//  DashboardScreen.swift
//  OutusProject
//
//  Created by Darya Lyubina  on 14.03.2022.
//

import SwiftUI

struct DashboardScreen: View {
    var body: some View {
        NavigationView {
            VStack {
                MyCustomView()
                    .frame(width: 150, height: 150, alignment: .center)
                    .cornerRadius(75)
                NavigationLink(destination: ListDestinationScreen()) {
                    Text("Hi! I'll open catalog tab for you😉")
                }
            }.navigationTitle("Dashboard")
        }
    }
}

struct DashboardScreen_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScreen()
    }
}
