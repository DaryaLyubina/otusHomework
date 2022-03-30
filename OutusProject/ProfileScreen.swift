//
//  ProfileScreen.swift
//  OutusProject
//
//  Created by Darya Lyubina  on 14.03.2022.
//

import SwiftUI

final class ProfileViewModel: ObservableObject {
    
}

struct ProfileScreen: View {
    @State var isNavigate: Bool = false
    @StateObject var viewModel: ProfileViewModel = .init()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("ProfileScreen")
                Divider()
                ProfileInfoView(isNavigate: $isNavigate)
            }
            .navigationTitle("Profile")
        }
    }
}

struct ProfileInfoView: View {
    @Binding var isNavigate: Bool
    
    var body: some View {
        ScrollView {
            NavigationLink("Title") {
                Text("Destination")
            }
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
