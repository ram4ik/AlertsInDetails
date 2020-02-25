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
            Alert(title: Text("Alert"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
