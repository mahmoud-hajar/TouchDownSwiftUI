//
//  SectionView.swift
//  TouchDownApp
//
//  Created by mahmoud hajar on 19/06/2021.
//

import SwiftUI

struct SectionView: View {
    @State var rotateClockWise:Bool
    
    var body: some View {
        VStack(spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockWise ? 90 : -90))
            Spacer()
        }//:VSTACK
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockWise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
