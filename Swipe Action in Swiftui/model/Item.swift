//
//  Item.swift
//  Furnitures
//
//  Created by Balaji on 25/11/20.
//

import SwiftUI

// Model And Model Data...

struct Item: Identifiable,Equatable{
    
    var id = UUID().uuidString
    var title: String
    var price: String
    var subTitle: String
    var image: String
    var offset : CGFloat = 0
}

var items = [
    
    Item(title: "Stylish Table Lamp", price: "$20.00", subTitle: "We have amazing quality Lamp wide range.", image: "lamp"),
    Item(title: "Modern Chair", price: "$60.00", subTitle: "New style of tables for your home and office.", image: "chair"),
    Item(title: "Wodden Stool", price: "$35.00", subTitle: "Amazing Stylish in multiple Most selling item of this.", image: "stool"),
    Item(title: "Ahaly elmasry", price: "$20.00", subTitle: "We have amazing quality Lamp wide range.", image: "lamp"),
    Item(title: "Tables aMOUNTS", price: "$60.00", subTitle: "New style of tables for your home and office.", image: "chair"),
    Item(title: "Tables iNFO", price: "$35.00", subTitle: "Amazing Stylish in multiple Most selling item of this.", image: "stool"),
    Item(title: "Chairs egypt", price: "$35.00", subTitle: "Amazing Stylish in multiple Most selling item of this.", image: "stool"),
    Item(title: "Chairs of egypt", price: "$35.00", subTitle: "Amazing Stylish in multiple Most selling item of this.", image: "stool"),
    Item(title: "lamps  saudan", price: "$35.00", subTitle: "Amazing Stylish in multiple Most selling item of this.", image: "stool"),
    Item(title: "lamps of egypt", price: "$35.00", subTitle: "Amazing Stylish in multiple Most selling item of this.", image: "stool"),
]

