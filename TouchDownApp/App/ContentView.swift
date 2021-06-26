//
//  ContentView.swift
//  TouchDownApp
//
//  Created by Ghoost on 5/22/21.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTY
    @EnvironmentObject var shop: Shop
    
    //MARK:- BODY
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing:0){
                    
                    //MARK:- Section 0
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .padding(.top,20)
                        .background(Color.white)                    .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(spacing:0) {
                    
                    FeaturedTabView()
                        .padding(.vertical, 20)
                        .frame(height: 300)
                    
                    //MARK:- Section 1
                    CategoryGridView()
                    
                    //MARK:- Section 2
                    TitleView(title: "Helmets")
                    
                    LazyVGrid(columns: gridLayout,spacing: 15, content: {
                        ForEach(products) { product in
                            ProductItemView(product: product)
                                .onTapGesture {
                                    feedback.impactOccurred()
                                    withAnimation(.easeOut) {
                                        shop.selectedProduct = product
                                        shop.showingProduct = true
                             }//:Animtation
                          }//: Geasture
                        }//:LOOP
                    })//:LazyVGrid
                       .padding()
                    
                    //MARK:- Section 3
                    TitleView(title: "Brands")

                    BrandGridView()
                    
                    //MARK:- Section 4
                    FooterView()
                        .padding(.horizontal)
                    
                      } //VSTACK
                    }) //: SCROLLVIEW
                }//: VSTACK
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }//: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
