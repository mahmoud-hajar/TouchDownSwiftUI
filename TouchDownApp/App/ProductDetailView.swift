//
//  ProductDetailView.swift
//  TouchDownApp
//
//  Created by mahmoud hajar on 20/06/2021.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            //MARK:- NavigationBar
                NavigationBarDetailView()
                    .padding(.horizontal)
                    .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            //MARK:- Header
            HeaderDetailView()
                .padding(.horizontal)
            
            //MARK:- Detail top bar
            TopPartDetailView()
                .padding(.horizontal)
            
            //MARK:- Detail bottom bar
            
            
            //MARK:- Ratings + Sizes
            
            
            //MARK:- Description
            
            
            //MARK:- Quantity + Favourite

            
            //MARK:- Add to cart
 
            
            Spacer()
            
        })//: VSTACK
          .ignoresSafeArea(.all,edges: .all)
        .background(Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue).ignoresSafeArea(.all,edges: .all))
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
             
    }
}
