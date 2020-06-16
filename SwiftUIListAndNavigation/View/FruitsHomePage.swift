//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Pankaj Talreja on 30/05/20.
//  Copyright © 2020 Pankaj Talreja. All rights reserved.
//

import SwiftUI

struct FruitsHomePage: View {
    let fruits = Fruit.allFruits()
    var body: some View {
        NavigationView {
            
            List(fruits, id: \.id) { fruit in //display table view, contains 2 paramenters 1) fruit array and 2) id: Generates a uniquely identified view that can be inserted or removed
                NavigationLink(destination: FruitsDetailView(fruit: fruit)) {
                    //Extracted the subview to keep the code clean
                    FruitCellView(fruit: fruit)
                }
            }
            .navigationBarTitle("Fruits", displayMode: .large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsHomePage()
    }
}

//
//    FruitCellView: This will create the Fruits cell view
//
struct FruitCellView: View {
    let fruit: Fruit
    var body: some View {
        //Ailgn elements horizontally
        HStack {
            //Resize the image, Do aspect fit on Image, set the frame size, apply padding from all sides and also give corner radius to image and then display the image
            Image(fruit.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: CGFloat(100.0), height: CGFloat(100.0))
                .cornerRadius(30.0)
                .padding(.all)
            
            //arrange elements vertically and leading alignment
            VStack(alignment: .leading) {
                //Display fruit name and apply padding from the bottom
                Text(fruit.name)
                    .padding(.bottom)
                //Display constant string
                Text("Click to see the benefits")
                
            }
            
        }
    }
}
