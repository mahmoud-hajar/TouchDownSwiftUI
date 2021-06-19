//
//  ProductItemView.swift
//  TouchDownApp
//
//  Created by mahmoud hajar on 19/06/2021.
//

import SwiftUI

struct ProductItemView: View {
    
    let product:Product
    
    var body: some View {
        VStack (alignment:.leading ,spacing:6, content: {
            
            //PHOTO
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//:ZSTACK
              .background(Color(red: product.red,
                                green: product.green,
                                blue: product.blue))
              .cornerRadius(12)
            
            //NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            //PRICE
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
                
                 
      })//: VSTACK
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 200))
            .padding()
            .background(colorBackground)
    }
}
