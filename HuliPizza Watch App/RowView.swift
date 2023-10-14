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
    var body: some View {
        VStack {
            HStack {
                Image(String(format: "%i_100w", menuItem.id))
                    .resizable()
                    .frame(width: 30, height: 30)
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
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(menuItem: MenuModel.menu[1])
    }
}
