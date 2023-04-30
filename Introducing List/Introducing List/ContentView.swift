//
//  ContentView.swift
//  Introducing List
//
//  Created by Elias Breitenbach on 28.04.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let people = ["Finn", "Leia", "Luke", "Rey"]
        List(people, id: \.self) {
            Text($0)
            //            List(0..<5) {
            //                Text("Dynamic row \($0)")
            //                Section("Section 1") {
            //                    Text("Static row 1")
            //                    Text("Static row 2")
            //                }
            //                Section("Section 2") {
            //                    ForEach(0..<5) {
            //                        Text("Dynamic row \($0)")
            //                    }
            //                }
            //                Section("Section 3") {
            //
            //                    Text("Static row 3")
            //                }
        }
        .listStyle(.grouped)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
