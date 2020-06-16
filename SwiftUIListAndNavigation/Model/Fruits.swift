//
//  Fruits.swift
//  SwiftUIDemo
//
//  Created by Pankaj Talreja on 01/06/20.
//  Copyright © 2020 Pankaj Talreja. All rights reserved.
//

import Foundation

struct Fruit {
    var name = ""
    var imageName = ""
    var benefits = ""
    var id = 0
}

extension Fruit {
    static func allFruits() -> [Fruit] {
        return [Fruit(name: "Apple", imageName: "Apple", benefits: """
  1) Apples May Be Good for Weight Loss \n 2) Apples May Be Good for Your Heart \n 3) They're Linked to a Lower Risk of Diabetes \n 4) They May Have Prebiotic Effects and Promote Good Gut Bacteria \n 5) Help Fight Asthma \n
 """, id: 1), Fruit(name: "Orange", imageName: "Orange", benefits: """
  1) Help to control Blood pressure \n 2) Heart health \n 3) They're Linked to a Lower Risk of Diabetes \n 4) Skin \n 5) Help Fight Asthma \n
 """, id: 2), Fruit(name: "Grapes", imageName: "Grapes", benefits: """
  1) Loaded with Antioxidants \n 2) Prevents Skin Problems \n 3) High Source of Potassium \n 4) Skin \n 5) Good for the Eyes \n
 """, id: 3), Fruit(name: "Kiwi", imageName: "Kiwi", benefits: """
  1) High Source of Vitamin C \n 2) Sleep Inducer \n 3) Good Source of Dietary Fiber \n 4) Helps in Digestion \n 5) Good Source of Folate \n
 """,id: 4)]
    }
}

/* Fruit(name: "Orange", imageName: "Orange", benefits: """
 1) Help to control Blood pressure \n 2) Heart health \n 3) They're Linked to a Lower Risk of Diabetes 4) Skin \n 5) Help Fight Asthma \n
""", id: 5), Fruit(name: "Grapes", imageName: "Grapes", benefits: """
 1) Loaded with Antioxidants \n 2) Prevents Skin Problems \n 3) High Source of Potassium 4) Skin \n 5) Good for the Eyes \n
""", id: 6)
*/
