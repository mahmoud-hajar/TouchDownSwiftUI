//
//  TopPartDetailView.swift
//  TouchDownApp
//
//  Created by mahmoud hajar on 22/06/2021.
//

import SwiftUI

struct TopPartDetailView: View {
    
    @State private var isAnimating:Bool = false
    
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 6, content: {
            VStack(alignment: .leading, spacing: 6, content: {
                
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35,anchor: .leading)
                
            })//: VSTACK
            .offset(y: isAnimating ? -50 : 75)
            
            
            Spacer()
            
            Image(sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)

        })//:HStack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
