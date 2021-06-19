//
//  CategoryItemView.swift
//  TouchDownApp
//
//  Created by mahmoud hajar on 13/06/2021.
//

import SwiftUI

struct CategoryItemView: View {
    
    let category:Category
    
    var body: some View {

        Button(action: {
            
            
        }, label: {
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 6) {
                
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
                
            } //:HSTACK
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
               RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray, lineWidth: 1)
            )
        })//: BUTTON
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
