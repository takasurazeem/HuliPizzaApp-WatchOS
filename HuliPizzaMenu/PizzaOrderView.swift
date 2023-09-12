//
//  PizzaOrderView.swift
//  PizzaOrder
//
//  Created by Steven Lipton on 4/21/20.
//  Copyright © 2020 Steven Lipton. All rights reserved.
//

import SwiftUI

struct PizzaOrderView: View {
    @State var selectedItem: Int!
    @State var selectedRow: Int!
    var menuItems = MenuModel.menu
    var body: some View {
        GeometryReader { _ in
            VStack {
                Text(self.selectedItem != nil ? MenuModel.menu[self.selectedItem!].name : "Pick a Pizza")
                    .font(.body)
                List {
                    ForEach(self.menuItems) { item in
                        RowView(menuItem: item)
                            .onTapGesture {
                                self.selectedItem = item.id
                            } // tapGesture
                    } // foreach
                } // list
            } // Vstack
        } // GeometryReader
    }
}

struct PizzaOrderView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaOrderView()
    }
}
