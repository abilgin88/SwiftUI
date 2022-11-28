//  ContentView.swift
//  SavingAppData
//  Created by Abdullah Bilgin on 11/27/22.
import SwiftUI

struct ContentView: View {
    
    // 1: Creating variables
    @State var text: String = UserDefaults.standard.string(forKey: "TEXT_KEY") ?? "sss"
    @State var inputText: String = ""
    
    var body: some View {
    // 2: Creating form and section
        Form {
            Section(header: Text("Input")) {
                TextField("Add some text here.", text: $inputText)
            }
            
            Section(header: Text("Latter count:")) {
                let charCount = inputText.filter { $0 != " " }.count
                
                if (charCount > 30) {
                    Text(String(charCount)).foregroundColor(.red)
                } else {
                    inputText == "" ? Text("Empty") : Text(String(charCount))
                }
            }
            Section(header: Text("Actions:")) {
                Button("Save Data") {
                    UserDefaults.standard.set(inputText, forKey: "TEXT_KEY")
                    text = inputText
                    print("Saved value: \(inputText)")
                }
            }
            Section(header: Text("Saved Data")) {
                Text(text).lineLimit(3)
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
