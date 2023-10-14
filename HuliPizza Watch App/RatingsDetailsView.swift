//
//  RatingsDetailsView.swift
//  HuliPizza Watch App
//
//  Created by Takasur A. on 14/10/2023.
//

import SwiftUI

struct RatingsDetailsView: View {
    var item: MenuItem
    @State var myRating: Float = 3
    var body: some View {
        VStack {
//            Text("\(Int(myRating))")
            RatingsView(rating: .constant(Int(myRating)))
            Image("\(item.id)_100w")
        }
        .navigationTitle(item.name)
        .focusable(true)
        .digitalCrownRotation(
            $myRating,
            from: 0,
            through: 6,
            by: 1,
            sensitivity: .low,
            isContinuous: false,
            isHapticFeedbackEnabled: true
        )
    }
}

#Preview {
    RatingsDetailsView(
        item: MenuModel.menu[2]
    )
}
