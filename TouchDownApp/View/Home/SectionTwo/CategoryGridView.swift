//
//  CategoryGridView.swift
//  TouchDownApp
//
//  Created by mahmoud hajar on 13/06/2021.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: columnSpacing, pinnedViews: [], content: {
                Section(header:SectionView(rotateClockWise: false),
                        footer:SectionView(rotateClockWise: true)) {
                    ForEach(categories) { category in
                      CategoryItemView(category: category)
                    }
                } //:LOOP
            })//: GRID
            .frame(height:140)
            .padding(.vertical,10)
            .padding(.horizontal,15)
        })//: SCROLL
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
            .padding()
    }
}
