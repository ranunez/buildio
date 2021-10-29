//
//  TabsScreenView.swift
//  Buildio
//
//  Created by severehed on 05.10.2021.
//

import SwiftUI

struct TabsScreenView: View {
    @Binding var showSideMenu: Bool
    @State private var selectedTab = 0
    
    init(showSideMenu: Binding<Bool>) {
        self._showSideMenu = showSideMenu
        #if os(iOS)
        UITabBar.appearance().backgroundColor = .white
        #endif
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            TabView(selection: $selectedTab) {
                NavigationView {
                    BuildsScreenView()
                        .navigationTitle("Builds")
                }
                .onTapGesture {
                    selectedTab = 0
                }
                .tag(0)
                .tabItem {
                    Image(systemName: "hammer.fill")
                    Text("Builds")
                }
                
                NavigationView {
                    AppsScreenView()
                        .navigationTitle("Apps")
                }
                .onTapGesture {
                    selectedTab = 1
                }
                .tag(1)
                .tabItem {
                    Image(systemName: "apps.iphone")
                    Text("Apps")
                }
                
                NavigationView {
                    AccountsScreenView()
                        .navigationTitle("Accounts")
                        
                }
                .onTapGesture {
                    selectedTab = 2
                }
                .tag(2)
                .tabItem {
                    Image(systemName: "ellipsis.rectangle")
                    Text("Accounts")
                }
                
                NavigationView {
                    ProfileScreenView()
                        .navigationTitle("Profile")
                }
                .onTapGesture {
                    selectedTab = 3
                }
                .tag(3)
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Profile")
                }
            }

        }
    }
}

struct TabsScreenView_Previews: PreviewProvider {
    static var previews: some View {
        TabsScreenView(showSideMenu: .constant(false))
    }
}
