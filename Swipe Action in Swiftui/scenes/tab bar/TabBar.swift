//
//  TabBar.swift
//  Swipe Action in Swiftui
//
//  Created by Hossam on 11/30/20.
//

import SwiftUI

struct TabBar: View {
    
    @State var current = "Shimmer"
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)){
            
            TabView (selection: $current) {
                
                MainHomeShimmer()
                    .tag("Shimmer")
              
                
//                Text("Messages")
               
                
//                Text("Account")
               
                Home()
                    .tag("Home")
                
                MainStoreView()
                    .tag("Stores")
                
            }
            
            HStack(spacing:15) {
                
                //tabbutton
                
                TabButton(title: "Shimmer", image: "user", selected: $current)
                
                Spacer(minLength: 0)
                
                TabButton(title: "Home", image: "home", selected: $current)
                
                Spacer(minLength: 0)
                
                TabButton(title: "Stores", image: "messenger", selected: $current)
                
                
                
               
            }
            .padding(.vertical,12)
            .padding(.horizontal)
            .background(Color("tab"))
            .clipShape(Capsule())
            .padding(.horizontal,25)
            
        }
        
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
