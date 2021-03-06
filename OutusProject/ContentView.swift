//
//  ContentView.swift
//  OutusProject
//
//  Created by Darya Lyubina  on 14.03.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            DashboardScreen()
                .tabItem {
                    Image(systemName: "star")
                    Text("Dashboard")
                }
                .tag(0)
            
            CatalogScreen()
                .tabItem {
                    Image(systemName: "books.vertical")
                    Text("Catalog")
                }
                .tag(1)
            
            ProfileScreen()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
