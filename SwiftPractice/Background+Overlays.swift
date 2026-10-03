//
//  Background+Overlays.swift
//  SwiftPractice
//
//  Created by juliana on 2026-10-03.
//

import SwiftUI

struct Background_Overlays: View {
    var body: some View {
        VStack(spacing: 100) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.cyan, Color.yellow]), startPoint: .leading, endPoint: .trailing))
                        .frame(width: 100, height: 100, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(
                            LinearGradient(gradient: Gradient(
                                colors: [Color.yellow, Color.cyan]),
                                           startPoint: .leading,
                                           endPoint: .trailing))
                        .frame(width: 120, height: 120, alignment: .center)
                    
                )
            
            
            Image(systemName: "heart.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
                        )
                        .frame(width: 100, height: 100)
                        .shadow(color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), radius: 8, x: 0.0, y: 10)
                        .overlay(
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 34, height: 35)
                                .overlay(
                                    Text("5")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                )
                                .shadow(color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 0.3410395408)), radius: 8, x: 5, y: 5),
                                alignment: .bottomTrailing
                        )
                )
        }
    }
}
#Preview {
    Background_Overlays()
}
