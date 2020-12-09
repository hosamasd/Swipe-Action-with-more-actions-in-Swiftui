//
//  HomeStore.swift
//  Swipe Action in Swiftui
//
//  Created by hosam on 12/9/20.
//

import SwiftUI

struct HomeStore: View {
    
    @Binding var filteredItems : [AppItem]
    
    var body: some View {
       
        
        ScrollView{
            
            VStack(spacing:15) {
                
                ForEach(filteredItems) {app in
                    
                    CardStoreView(item: app)
                }
                
            }
            .padding()
            
        }
        
    }
}

