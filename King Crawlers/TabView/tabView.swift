//
//  tabView.swift
//  King Crawlers
//
//  Created by Cody Burgess on 11/14/23.
//

import SwiftUI

struct tabView: View {
   
    /// <#Description#>
    var body: some View {
        NavigationStack {
            VStack {
                HStack(spacing: 35) {
                    NavigationLink {
                        //ContentView()
                    }
                    
                label: {
                    VStack {
                        Image(systemName: "house")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                    }
                }
                    NavigationLink {
                        
                    }
                    
                label: {
                    VStack {
                        Image(systemName: "house")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                    }
                }
                    NavigationLink {
                        
                    }
                    
                label: {
                    VStack {
                        Image(systemName: "plus.diamond")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                            .foregroundColor(.black)
                    }
                }
                    NavigationLink {
                        
                    }
                label: {
                    VStack {
                        Image(systemName: "message")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                    }
                }
                    NavigationLink {
                        
                    }
                label: {
                    VStack{
                        Image(systemName: "person")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                    }
                }
                }
            }
            .frame(width: 375)
            .frame(height: 50)
            .background(Color(.lightGray))
            .cornerRadius(25)
            
        }
    }
}
#Preview {
    tabView()
}
