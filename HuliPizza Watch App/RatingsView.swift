//
//  RatingsView.swift
//  HuliPizza Watch App
//
//  Created by Takasur A. on 14/10/2023.
//

import SwiftUI

struct RatingsView: View {
    @Binding var rating: Int
    let maxRating: Int = 6
    var body: some View {
        HStack {
            ForEach(1...maxRating, id: \.self) { counter in
                if counter <= rating {
                    Image(systemName: "star.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.yellow)
                } else {
                    Image(systemName: "star")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.gray)
                }
            }
        }
    }
}

#Preview {
    RatingsView(rating: .constant(4))
}
