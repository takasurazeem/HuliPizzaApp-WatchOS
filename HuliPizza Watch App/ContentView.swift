//
//  ContentView.swift
//  HuliPizza Watch App
//
//  Created by Takasur Azeem on 12/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Huli Pizza Company")
            PizzaOrderView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
