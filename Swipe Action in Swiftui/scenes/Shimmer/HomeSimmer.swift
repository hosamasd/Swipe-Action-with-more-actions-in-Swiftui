//
//  HomeSimmer.swift
//  Swipe Action in Swiftui
//
//  Created by hosam on 12/9/20.
//

import SwiftUI

struct HomeSimmer: View {
    @State var data : [String] = []
    @State var show = false
    
    var body: some View {
     
//        NavigationView{
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack{
                    
                    if self.data.isEmpty{
                        
                        ForEach(0...10,id: \.self){_ in
                            
                            CardShimmer()
                        }
                    }
                    else{
                        
                        ForEach(self.data,id: \.self){i in
                            
                           CellView(pic: i)
                            .onTapGesture {
                                
                                self.show.toggle()
                            }
                        }
                    }

                }
            }
            .navigationBarTitle("Shimmer",displayMode: .inline)
            .navigationBarItems(trailing:
            
                Button(action: {
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        
                        for i in 1...5{
                            
                            self.data.append("p\(i)")
                        }
                    }

                    
                }, label: {
                    
                    Image(systemName: "plus")
                    .resizable()
                    .frame(width: 18, height: 18)
                    .foregroundColor(.blue)
                    
                })
            )
//        }
        .sheet(isPresented: self.$show) {
            
            HomeTextShimmer()
        }
        
            .onAppear{
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 8) {
                    
                    for i in 1...5{
                        
                        self.data.append("p\(i)")
                    }
                }
                
            }
    }

}
