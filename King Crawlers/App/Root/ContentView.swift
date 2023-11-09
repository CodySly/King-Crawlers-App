//
//  ContentView.swift
//  King Crawlers
//
//  Created by Cody Burgess on 10/17/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = TrailLocationViewModel()
    @State private var presentSideMenu = false
    @State private var presentLocationMenu = false
    var body: some View {
        NavigationView {
            ZStack {
                Color(Color(.systemGray))
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    VStack {
                        HStack(alignment: .center) {
                            VStack {
                                Image("KingCrawlersLogo")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 300, height: 75)
                            }
                        }
                    }
                    .frame(width: 375, height: 100)
                    .cornerRadius(25)
                    
                    Spacer(minLength: 5)
                    
                    VStack {
                        HStack(spacing: 100) {
                            Button {
                                presentSideMenu.toggle()
                            }
                            
                        label: {
                            VStack {
                                Image(systemName: "list.bullet.indent")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.black)
                                
                                Text("Menu")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                            }
                        }
                            Button {
                               presentLocationMenu.toggle()
                            }
                        label: {
                            VStack {
                                Image(systemName: "mappin.and.ellipse")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.black)
                                
                                Text("Location")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                            }
                        }
                            Button {
                                
                            }
                        label: {
                            VStack{
                                Image(systemName: "person")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 15)
                                    .foregroundColor(.black)
                                
                                Text("Account")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                            }
                        }
                        }
                    }
                    .frame(width: 375, height: 50)
                    .background(Color(.lightGray))
                    .cornerRadius(25)
                    
                    
                }
                SideMenu()
                    .ignoresSafeArea()
//                    .frame(width: 300, height: 600)
//                    .cornerRadius(25)
//                    .padding()
//                    .padding(.top, 100)
                LocationMenu()
                    .frame(width: 300, height: 600)
                    .cornerRadius(25)
                    .padding()
                    .padding(.top, 100)
                
            }
            
        }
    }
        @ViewBuilder
        private func SideMenu() -> some View {
            King_Crawlers.SideMenu(isShowing: $presentSideMenu,
                                   direction: .leading) {
                SideMenuContent(presentSideMenu: $presentSideMenu)
                    .ignoresSafeArea()
                    .edgesIgnoringSafeArea(.all)
            }
        }
        @ViewBuilder
        private func LocationMenu() -> some View {
            King_Crawlers.LocationMenu(isShowing: $presentLocationMenu,
                                       direction: .leading) {
                LocationMenuContent(presentLocationMenu: $presentLocationMenu)
                    .frame(width: 300)
            }
        }
    }
#Preview {
    ContentView()
}

