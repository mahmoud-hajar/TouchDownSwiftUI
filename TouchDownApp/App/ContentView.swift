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
            VStack {
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


                FooterView()
                    .padding(.horizontal)
                
                  } //VSTACK
                }) //: SCROLLVIEW
            }//: VSTACK
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
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