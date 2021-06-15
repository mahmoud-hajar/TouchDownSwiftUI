//
//  FeaturedTabView.swift
//  TouchDownApp
//
//  Created by mahmoud hajar on 13/06/2021.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
          ForEach(players) { player in
            FeaturedItemView(player: player)
              .padding(.top, 10)
              .padding(.horizontal, 15)
          }
        } //: TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(Color.gray)
    }
}
