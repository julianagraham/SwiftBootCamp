//
//  SwiftUIView.swift
//  SwiftPractice
//
//  Created by juliana on 2026-10-03.
//

import SwiftUI

struct ImageBootCamp: View {
    var body: some View {
        Image("cat")
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 200)
            .clipShape(Circle())
        
        Image("apple")
            .renderingMode(.template)
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 200)
            .foregroundColor(.pink)
    }
}

#Preview {
    ImageBootCamp()
}
