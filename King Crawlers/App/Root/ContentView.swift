//
//  ContentView.swift
//  King Crawlers
//
//  Created by Cody Burgess on 10/17/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = TrailLocationViewModel()
    @State private var isShowingSideMenu = false
    @State private var isShowingLocationMenu = false
    @State private var isDetailViewPresented = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(Color(.systemGray))
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image("KingCrawlersLogo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 75)
                        .padding(.bottom)
                    
                    VStack {
                        topTabView(isShowingSideMenu: $isShowingSideMenu, isShowingLocationMenu: $isShowingLocationMenu)
                            .frame(width: 375, height: 50)
                            .cornerRadius(25)
                        
                        ScrollView {
                            Image("Pinnacle1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 200, height: 200)
                        }
                        
                        tabView()
                            .frame(width: 375, height: 50)
                            .cornerRadius(25)
                    }
                    .navigationBarHidden(true)
                }
                .overlay(
                    NavigationLink(destination: LocationMenuContent(presentLocationMenu: $isShowingLocationMenu)) {
                        EmptyView()
                    },
                    alignment: .bottom
                )
                .overlay(
                    NavigationLink(destination: SideMenuContent(presentSideMenu: $isShowingSideMenu)) {
                        EmptyView()
                    },
                    alignment: .topTrailing
                )
                SideMenu(isShowing: $isShowingSideMenu, direction: .leading) { SideMenuContent(presentSideMenu: $isShowingSideMenu)}
                
                LocationMenu(isShowing: $isShowingLocationMenu, direction: .leading) { LocationMenuContent(presentLocationMenu:
                $isShowingLocationMenu)}
            }
        }
    }
}







#Preview {
    ContentView()
}

