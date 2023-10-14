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
    var menuItems = MenuModel.menu
    var body: some View {
            VStack {
                List {
                    ForEach(self.menuItems) { item in
                        NavigationLink(value: item) {
                            RowView(menuItem: item)
                        }
                        .navigationDestination(for: MenuItem.self) { item in
                            PizzaDetailView(
                                item: item,
                                selectedItem: $selectedItem
                            )
                        }
                        .listItemTint(.green.opacity(selectedItem == item.id ? 0.7 : 0.3))
                    } // foreach
                } // list
                .listStyle(.carousel)
            } // Vstack
    }
}

struct PizzaOrderView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaOrderView()
    }
}
