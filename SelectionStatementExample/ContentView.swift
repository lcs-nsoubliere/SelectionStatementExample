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
    
    
    //MARK: Target
    //the range of the target is 1-100, as we put it in as (1...100)
    let target = Int.random(in:1...100)
    
    //the feedback to the user as they play
    @State var feedback = ""
    
    
    
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
                
                // Make the users guess into an intager
                let currentGuessAsInteger = Int(currentGuess)
                
                
                
                //MARK: GUESS
                
                //compare the users current guess to the target
                
                if currentGuessAsInteger < target {
                    //Guess Higher
                    feedback = "Guess Higher"
                } else if currentGuessAsInteger > target {
                    feedback = "Guess Lower"
                } else { feedback = "You Got It"
                }
                
                
                
            }, label: {
                Text("Submit Guess")
            })
                .buttonStyle(.bordered)
            Text("The super secret target is \(target)")
                .padding()
            
            Text(feedback)
                .italic()
                .padding()
            
            Spacer()
        }
        .navigationTitle("Guessing Game")
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
