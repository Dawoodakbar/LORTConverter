//
//  ExtractedView.swift
//  LORTConverter
//
//  Created by dawood on 9/5/25.
//
import SwiftUI

struct ExchangeRate: View {
    let leftImage : ImageResource
    let text: String
    let rightImage: ImageResource
    
    var body: some View {
        HStack {
            // Left currency image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            // Exchange rate
            Text(text)
            
            // Right Curreny image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .goldpiece, text: "1 Gold Piece = 4 Gold Pennies", rightImage: .goldpenny)
}
