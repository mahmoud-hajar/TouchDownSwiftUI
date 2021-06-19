//
//  FeaturedTabView.swift
//  TouchDownApp
//
//  Created by mahmoud hajar on 13/06/2021.
//

import SwiftUI

struct FeaturedTabView: View {
    
    public let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var selection = 0

    
    var body: some View {
        TabView(selection : $selection) {
          ForEach(players) { player in
            FeaturedItemView(player: player)
              .padding(.top, 10)
              .padding(.horizontal, 15)
          }
        } //: TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .onReceive(timer, perform: { _ in
            withAnimation{
                print("selection is",selection)
                selection = selection < 5 ? selection + 1 : 0
            }
        })
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(Color.gray)
    }
}
