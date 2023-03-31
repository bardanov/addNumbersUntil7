//
//  ContentView.swift
//  LoopsChallenge
//
//  Created by Serezha on 07.03.2023.
//

import SwiftUI

struct ContentView: View {
    @State var deck = [String]()
    var body: some View {
        
        VStack {
            List(deck, id: \.self) { d in
                Text(d)
            }
            Button("Add numbers until 7 appears") {
                addNumbers()
            }.padding()
            Button("Increase all the numbers by 1") {
                increase()
            }.padding()
            Button("Clear all the numbers") {
                clearAll()
            }.padding()
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    func increase() {
        let j = deck.count
        
        for de in deck {
            var de = Int(de)
            de! += 1
            deck.append(String(de!))
        }
        deck.removeFirst(j)
    }
    func addNumbers() {
        if deck.contains("7") == false {
            let randInt = Int.random(in: 1...10)
            deck.append(String(randInt))
        }
    }
    func clearAll() {
        deck.removeAll()
    }
}
