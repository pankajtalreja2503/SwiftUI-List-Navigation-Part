//
//  FruitsDetailView.swift
//  SwiftUIDemo
//
//  Created by Pankaj Talreja on 01/06/20.
//  Copyright © 2020 Pankaj Talreja. All rights reserved.
//

import SwiftUI

struct FruitsDetailView: View {
    let fruit: Fruit
    var body: some View {
        
        //HStack to apply the padding to all elements inside
        HStack(alignment: .top) {
            
            //vertically arrange and leading alignment of the elements
            VStack(alignment: .leading) {
                
                //Display text in BOLD format
                Text("Visual of \(fruit.name) along with Benefits")
                    .font(.title)
                    .bold()
                
                //Resize the image and do aspect ratio then display Image on image view
                Image(fruit.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                //Created the Subview for Benefits UI to keep code clean
                BenefitsView(fruit: fruit)

                //to move the views in top
                Spacer()
            }
            
        }.padding()
            .navigationBarTitle(Text(fruit.name), displayMode: .inline)
    }
}


//
//  This will be called to create the Benefit UI
//
struct BenefitsView: View {
    let fruit: Fruit
    var body: some View {
        
        //vertically arrange and leading alignment of the elements
        VStack(alignment: .leading) {
            //display text in title size
            Text("Benefits: ")
                .font(.title)
                .foregroundColor(.primary)
            //display all the benefits
            Text(fruit.benefits)
                .foregroundColor(.secondary)
        }
    }
}


struct FruitsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsDetailView(fruit: Fruit(name: "Grapes", imageName: "Grapes", benefits: """
        \n  1) Loaded with Antioxidants \n 2) Prevents Skin Problems \n 3) High Source of Potassium \n 4) Skin \n 5) Good for the Eyes \n
        """, id: 3))
    }
}
