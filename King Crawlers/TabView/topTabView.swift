//
//  topTabView.swift
//  King Crawlers
//
//  Created by Cody Burgess on 12/7/23.
//


import SwiftUI

struct topTabView: View {
    @Binding var isShowingSideMenu: Bool
    @Binding var isShowingLocationMenu: Bool
    @StateObject private var vm = TrailLocationViewModel()

    
    var body: some View {
        ZStack {
            Color(Color(.clear))
                .edgesIgnoringSafeArea(.all)
            NavigationView {
                VStack {
                    HStack(spacing: 100) {
                        Button(action: {
                            isShowingSideMenu.toggle()
                        }) {
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
                        
                        Button(action: {
                            isShowingLocationMenu.toggle()
                        }) {
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
                        
                        Button(action: {
                            // Do something for account
                        }) {
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
            .overlay(
                SideMenu(isShowing: $isShowingSideMenu, direction: .leading) {
                    SideMenuContent(presentSideMenu: $isShowingSideMenu)
                }
            
            )
            
            .overlay(
                LocationMenu(isShowing: $isShowingLocationMenu,
                             direction: .leading) {
                              LocationMenuContent(presentLocationMenu: $isShowingLocationMenu)
                             }
            )
        }
    }
}


