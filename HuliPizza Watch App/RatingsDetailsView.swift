//
//  RatingsDetailsView.swift
//  HuliPizza Watch App
//
//  Created by Takasur A. on 14/10/2023.
//

import SwiftUI

struct RatingsDetailsView: View {
    var item: MenuItem
    var body: some View {
        VStack {
            RatingsView(rating: item.rating)
            Image("\(item.id)_100w")
        }
        .navigationTitle(item.name)
    }
}

#Preview {
    RatingsDetailsView(
        item: MenuModel.menu[2]
    )
}
