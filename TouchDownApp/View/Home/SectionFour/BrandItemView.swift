//
//  BrandItemView.swift
//  TouchDownApp
//
//  Created by mahmoud hajar on 19/06/2021.
//

import SwiftUI

struct BrandItemView: View {
    
    let brand:Brand
    
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray,lineWidth: 1.0)
            )
    }
    
    
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .padding()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
