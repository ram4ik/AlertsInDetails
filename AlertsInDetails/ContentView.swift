//
//  ContentView.swift
//  AlertsInDetails
//
//  Created by ramil on 25.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
        
    var body: some View {
        Button(action: {
            self.showAlert.toggle()
        }) {
            Text("Hello, World!")
        }
        .alert(isPresented: $showAlert) {
            
            let cancelButton = Alert.Button.cancel()
            let defaultButton = Alert.Button.default(Text("Print")) {
                print("Default")
            }
            let destructiveButton = Alert.Button.destructive(Text("Destructive"))
            
            return Alert(title: Text("Alert"),
                  message: Text("My alert message!"),
                primaryButton: cancelButton,
                secondaryButton: destructiveButton)
            
//            return Alert(title: Text("Alert"),
//                         message: Text("My alert message!"),
//                         dismissButton: defaultButton)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
