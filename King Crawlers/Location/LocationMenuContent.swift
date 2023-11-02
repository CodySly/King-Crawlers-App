//
//  LocationMenuContent.swift
//  King Crawlers
//
//  Created by Cody Burgess on 10/17/23.
//

import SwiftUI

struct LocationMenuContent: View {
    @Binding var presentLocationMenu: Bool
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    HStack {
                        Button {
                            presentLocationMenu.toggle()
                        } label: {
                            
                            Image(systemName: "x.circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .foregroundColor(.black)
                                .padding(.top)
                        }
                    }
                }
                VStack {
                    HStack {
                        Text("Location")
                            .foregroundColor(.black)
                            .font(.title)
                            .fontWeight(.bold)
                    }
                }
                Spacer()
            }
            MapView()
//                .frame(width: 275, height: 500)
//                .cornerRadius(25)
//                .padding(.top, 100)
        }
    }
    @ViewBuilder
    private func SideMenuTopView() -> some View {
    }
}
