//
//  ContentView.swift
//  Introducing List
//
//  Created by Elias Breitenbach on 28.04.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        let input = "a b c"
        let letters = input.components(separatedBy: " ")
        

            if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
                // we found the file in our bundle!
                
                if let fileContents = try? String(contentsOf: fileURL) {
                    // we loaded the file into a string!
                }
            }
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
    func text() {
        
        let word = "swift"
        let checker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)
        
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        let allGood = misspelledRange.location == NSNotFound
//        let input = """
//        a
//        b
//        c
//        """
//        let letters = input.components(separatedBy: "\n")
//        let letter = letters.randomElement()
//
//        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
