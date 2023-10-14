//
//  ZoomView.swift
//  HuliPizza Watch App
//
//  Created by Takasur A. on 15/10/2023.
//

import SwiftUI

struct ZoomView: View {
    @State var width: CGFloat = 40
    var item: MenuItem
    
    var body: some View {
        VStack {
            Text(item.name)
            Image("\(item.id)_100w")
                .resizable()
                .scaledToFit()
                .frame(height: width)
                .clipShape(RoundedRectangle(cornerRadius: width * 0.15))
                .focusable()
                .digitalCrownRotation($width, from: 40, through: 130)
            Spacer()
        }
        .animation(.interpolatingSpring(stiffness: 10, damping: 2), value: width)
    }
}

#Preview {
    ZoomView(item: MenuModel.menu[2])
}
