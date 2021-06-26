//
//  ProductDetailView.swift
//  TouchDownApp
//
//  Created by mahmoud hajar on 20/06/2021.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop:Shop
    
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
                .zIndex(1)
            
            //MARK:- Detail bottom bar
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0, content: {

                //MARK:- Ratings + Sizes
                   RatingsSizesDetailView()
                    .padding(.top,-20)
                    .padding(.bottom,12)
                
                //MARK:- Description
                ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })//: ScrollView
                
                //MARK:- Quantity + Favourite
                 QuantityFavouriteDetailView()
                    .padding(.vertical,10)
                
                //MARK:- Add to cart
                 AddToCartDetailView()
                    .padding(.bottom, 20)
                
                Spacer()
        
            }) //VSTACK
            .padding(.horizontal)
            .background(Color.white
                            .clipShape(CustomShape())
                            .padding(.top,-105)
            )
        })//: VSTACK
          .zIndex(0)
          .ignoresSafeArea(.all,edges: .all)
        .background(Color(red: shop.selectedProduct?.red ?? sampleProduct.red,
                          green: shop.selectedProduct?.green ?? sampleProduct.green,
                          blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
                        .ignoresSafeArea(.all,edges: .all))
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
             
    }
}
