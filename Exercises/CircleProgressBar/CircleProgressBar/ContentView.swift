//
//  ContentView.swift
//  CircleProgressBar
//
//  Created by Abdullah Bilgin on 11/29/22.
//

import SwiftUI

struct ContentView: View {
    // 2: Create a variable to update (as time going on) to display value on screen
    @State var progressValue: Float = 0.0
    
    var body: some View {
        
    // 3: Call the progress bar into content view
        VStack {
            // add progress bar
            ProgressBar(progress: self.$progressValue, color: Color.red) // you can change color
                // set in the center of screen
                .frame(width: 160.0, height: 160.0)
                // set initial values for progress bar
                .padding(20.0).onAppear() {
                    self.progressValue = 0.80 // you can change initial to see result
                }
            
            // create a button to increment
            Button("Increment") {
                if (progressValue) < 1.0 {
                    self.progressValue += 0.10
                } else { // to see again progress value, need to reset bu 1.0
                    progressValue -= 1.0
                }
                
            }
            
        }
    }
}

// 1: Create a struct of Progress Bar

struct ProgressBar : View {
    @Binding var progress: Float // take care of the value we want to insert to update
    var color: Color = Color.green
    
    var body: some  View { // a view protocol to create a view
        ZStack { // to add view on tap each other
            
           // First Circle: create the  backbar of the progress bar
            Circle()
                .stroke(lineWidth: 20.0)
                .opacity(0.20)
                .foregroundColor(Color.gray)
            
          // Second Circle: create a circle to display progress
            Circle()
                // to care about showing the progress on the correct spot
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                // for corner and edge
                .stroke(style: StrokeStyle(lineWidth: 12.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(color)
                // to start progress bar 12 o'clock (by 270 degree) position
                .rotationEffect(Angle(degrees: 270))
                // animate to progress bar
                .animation(.easeInOut(duration: 2.0))
            
            

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
