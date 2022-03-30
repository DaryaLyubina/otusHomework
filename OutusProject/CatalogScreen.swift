//
//  CatalogScreen.swift
//  OutusProject
//
//  Created by Darya Lyubina  on 14.03.2022.
//

import SwiftUI

struct CatalogScreen: View {
    var body: some View {
        
        NavigationView {
            List {
                NavigationLink(destination: ListDestinationScreen()) {
                    Label("Documents", systemImage: "folder")
                }
                
                NavigationLink(destination: ListDestinationScreen()) {
                    Label("Downloads", systemImage: "folder")
                }
                
                NavigationLink(destination: ListDestinationScreen()) {
                    Label("My Folder", systemImage: "folder")
                }
                
                NavigationLink(destination: ListDestinationScreen()) {
                    Label("Bin", systemImage: "folder")
                }
            }
        }.navigationTitle("list")
    }
}

struct CatalogScreen_Previews: PreviewProvider {
    static var previews: some View {
        CatalogScreen()
    }
}


struct ListDestinationScreen: View {
    var body: some View {
        Text("ListDestinationScreen")
    }
}
