//  ContentView.swift
//  QrCodeScaning
//  Created by Abdullah Bilgin on 11/28/22.

import SwiftUI
import CodeScanner // import framework to use

struct ContentView: View {
    
    // 1: Creating variables
    @State var isPresentingScanner = false // to control scanner
    @State var scannedCode: String = "Scan a QR code to get started." // it is send back a string after we scan the code
    
    // 2: Create a scanned sheet for different view popups inside the view to take a picture and create an element inside the body
    var scannerSheet: some View {
        CodeScannerView( //  using framework
            // what kind of type we want to scan
            codeTypes: [.qr],
            // what happen when we scan
            completion: { result in
                if case let .success(code) = result {
                    self.scannedCode = code.string // string
                    self.isPresentingScanner = false
                }
            }
        )
    }
    
    var body: some View {
        // 3: Creating UI
        VStack(spacing: 10) {
            Text(scannedCode)
            
            Button("Scan QR Code") {
                self.isPresentingScanner = true // display the camera
            }
            .sheet(isPresented: $isPresentingScanner) {
                self.scannerSheet
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
