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
    @State private var isRatingPresented = false
    @State private var isZooming = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            VStack {
                Text(item.name)
                    .fontWeight(.heavy)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Image("\(item.id)_100w")
                    .cornerRadius(10)
                    .onTapGesture {
                        isZooming.toggle()
                        WKInterfaceDevice.current().play(.click)
                    }
                    .sheet(isPresented: $isZooming, content: {
                        ZoomView(item: item)
                    })
                Button {
                    WKInterfaceDevice.current().play(.success)
                    selectedItem = item.id
                    dismiss()
                } label: {
                    Text("Order")
                }

                Text(item.description)
//                NavigationLink {
//                    RatingsDetailsView(item: item)
//                } label: {
//                    Text("Ratings")
//                }
                Button {
                    self.isRatingPresented = true
                } label: {
                    Text("Ratings")
                }
            }
            .fullScreenCover(isPresented: $isRatingPresented) {
                RatingsDetailsView(item: item)
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
