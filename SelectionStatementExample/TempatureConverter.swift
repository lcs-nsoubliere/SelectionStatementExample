//
//  TempatureConverter.swift
//  SelectionStatementExample
//
//  Created by Noah Alexandre Soubliere on 2021-12-02.
//

import SwiftUI

struct TempatureConverter: View {
    //MARK: stored properties
    @State var celsius: Double = 0
    
    //MARK: computed properties
    var fahrenheit: Double {
        return ( celsius * 1.8 + 32 )
    }
    
    
    var body: some View {
        Text("Tempature in Celsius")
            .bold()
        
    }
}

struct TempatureConverter_Previews: PreviewProvider {
    static var previews: some View {
        TempatureConverter()
    }
}
