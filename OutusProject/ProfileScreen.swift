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
    @State var isShowModal: Bool = false
    
    @StateObject var viewModel: ProfileViewModel = .init()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("ProfileScreen")
                Divider()
                
                Button("I will open a modal window") {
                    isShowModal = true
                }
                
            }.sheet(isPresented: $isShowModal) {
                ModalView()
            }
            
        }.navigationTitle("Profile")
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
