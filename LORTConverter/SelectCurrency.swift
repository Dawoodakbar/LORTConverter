//
//  ExtractedView.swift
//  LORTConverter
//
//  Created by dawood on 9/5/25.
//
import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    let leftImage : ImageResource
    let text: String
    let rightImage: ImageResource
    
    var body: some View {
         // ZStack
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            // VStack
            VStack {
                // Text
                Text("Select the curreny you are starting with:")
                    .fontWeight(.bold)
                
                // Currency icon
                CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper Penny")
                
                // Text
                Text("Select the currnet you would like to convert to:")
                    .fontWeight(.bold)
                
        
                
                // Button
                Button("Done") {
                   dismiss()
                }
                .buttonStyle(.borderedProminent)
                    .tint(.brown.mix(with: .black, by: 0.3))
                    .font(.largeTitle)
                    .padding()
                    .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency(leftImage: .goldpiece, text: "1 Gold Piece = 4 Gold Pennies", rightImage: .goldpenny)
}
