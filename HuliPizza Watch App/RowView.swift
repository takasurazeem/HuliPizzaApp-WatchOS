//
//  RowView.swift
//  TestWatchAppSwiftUI
//
//  Created by Steven Lipton on 4/9/20.
//  Copyright © 2020 Steven Lipton. All rights reserved.
//

import SwiftUI

struct RowView: View {
    var menuItem: MenuItem
    @State private var pizzaZoom: Bool = false
    var body: some View {
        VStack {
            HStack {
                Image(String(format: "%i_100w", menuItem.id))
                    .resizable()
                    .frame(width: pizzaZoom ? 60 : 30, height: pizzaZoom ? 60 : 30)
                    .onTapGesture {
                        pizzaZoom.toggle()
                    }
                    .animation(.interpolatingSpring(stiffness: 12, damping: 3.0), value: pizzaZoom)
                    .scaledToFit()
                    .clipShape(Circle())
                Text(menuItem.name)
                    .font(.caption)
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.85)
                Spacer()
            }
            RatingsView(rating: .constant(menuItem.rating))
                .frame(height: 12)
                .padding()
//            Text(menuItem.description)
//            Spacer()
        }
        .animation(.easeIn(duration: 0.75), value: pizzaZoom)
    }
}

struct RowView_Previews: PreviewProvider {
    @State static var pizzaZoom = false
    static var previews: some View {
        RowView(menuItem: MenuModel.menu[1])
    }
}
