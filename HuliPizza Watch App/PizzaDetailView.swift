//
//  PizzaDetailView.swift
//  HuliPizza Watch App
//
//  Created by Takasur Azeem on 12/09/2023.
//

import SwiftUI

struct PizzaDetailView: View {
    let item: MenuItem
    @Binding var selectedItem: Int!
    var body: some View {
        ScrollView {
            VStack {
                Text(item.name)
                    .fontWeight(.heavy)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Image("\(item.id)_100w")
                    .cornerRadius(10)
                Button {
                    selectedItem = item.id
                } label: {
                    Text("Order")
                }

                Text(item.description)
                NavigationLink {
                    RatingsDetailsView(item: item)
                } label: {
                    Text("Ratings")
                }

            }
            .navigationTitle(item.name)
        }
    }
}

struct PizzaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaDetailView(
            item: MenuModel.menu[2],
            selectedItem: .constant(0)
        )
    }
}
