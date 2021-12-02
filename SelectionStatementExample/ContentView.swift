//
//  ContentView.swift
//  SelectionStatementExample
//
//  Created by Noah Alexandre Soubliere on 2021-12-02.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored Properties
    //The currenet guess
    @State  var currentGuess: Double = 50.0
    
    //MARK: Computed Properties
    var body: some View {
        VStack{
            Slider(value: $currentGuess,
                   in: 0.0...100.0,
                   step: 1.0,
                   label: {
                
                Text("Guess")
            },
                   minimumValueLabel: {
                Text("0")
            },
                   maximumValueLabel: {
                Text("100")
            })
            Text("\(String(format: "%.0f", currentGuess))")
                .font(.largeTitle)
                .bold()
            
            Button(action: {
                // NOTE: Output will not be shown unless this app is run in the "full" simulator
                print("Button was pressed")
            }, label: {
                Text("Submit Guess")
            })
                .buttonStyle(.bordered)
            
        }
        .navigationTitle("Guessing Game")
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
