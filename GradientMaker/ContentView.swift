//
//  ContentView.swift
//  GradientMaker
//
//  Created by Sebastian on 2024-01-11.
//

import SwiftUI

struct ContentView: View {
    // mark stored properties
    @State var startingColor = Color.red
    @State var endingColor = Color.blue
    
    @State var startingPoint = UnitPoint.leading
    @State var endingPoint = UnitPoint.trailing
    
    //mark computed properties
    var body: some View {
        VStack {
            LinearGradient(gradient: Gradient(colors: [startingColor, endingColor]), startPoint: startingPoint, endPoint: endingPoint)
            HStack {
                ColorPicker("Starting Color", selection: $startingColor)
                
                ColorPicker("Starting Color", selection: $endingColor)
                
                Picker("Starting Point", selection: $startingPoint) {
                    Text("Top").tag(UnitPoint.top)
                    Text("Bottom").tag(UnitPoint.bottom)
                    Text("Leading").tag(UnitPoint.leading)
                    Text("Trailing").tag(UnitPoint.trailing)
                    Text("Top Leading").tag(UnitPoint.topLeading)
                    Text("Top Trailing").tag(UnitPoint.topTrailing)
                    Text("Bottom Leading").tag(UnitPoint.bottomLeading)
                    Text("Bottom Trailing").tag(UnitPoint.bottomTrailing)

                }
                
                Picker("Ending Point", selection: $endingPoint) {
                    Text("Top").tag(UnitPoint.top)
                    Text("Bottom").tag(UnitPoint.bottom)
                    Text("Leading").tag(UnitPoint.leading)
                    Text("Trailing").tag(UnitPoint.trailing)
                    Text("Top Leading").tag(UnitPoint.topLeading)
                    Text("Top Trailing").tag(UnitPoint.topTrailing)
                    Text("Bottom Leading").tag(UnitPoint.bottomLeading)
                    Text("Bottom Trailing").tag(UnitPoint.bottomTrailing)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
