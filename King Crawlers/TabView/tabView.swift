//
//  tabView.swift
//  King Crawlers
//
//  Created by Cody Burgess on 11/14/23.
//

import SwiftUI

struct tabView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            Text("Messenger")
                .tabItem {
                    Label("Messenger", systemImage: "message")
                        .foregroundColor(.red)
                }
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle")
                }
        }
        .accentColor(.red)
    }
}

#Preview {
    tabView()
}
