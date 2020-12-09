//
//  MainStoreView.swift
//  Swipe Action in Swiftui
//
//  Created by hosam on 12/9/20.
//

import SwiftUI

struct MainStoreView: View {
    
    @State var filteredItems = apps

    
    var body: some View {
        CustomNavigationView(view: AnyView(HomeStore(filteredItems: $filteredItems)), placeHolder: "Search Apps,Games", largeTitle: true, title: "Hosam Mohamed",
                             
            onSearch: { (txt) in

            // filterting Data...
            if txt != ""{
                self.filteredItems = apps.filter{$0.name.lowercased().contains(txt.lowercased())}
            }
            else{
                self.filteredItems = apps
            }
            
        }, onCancel: {
            // Do Your Own Code When Search And Canceled....
            self.filteredItems = apps
            
        })
        .ignoresSafeArea()
    }
}
