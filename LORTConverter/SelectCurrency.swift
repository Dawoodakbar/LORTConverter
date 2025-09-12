//
//  ExtractedView.swift
//  LORTConverter
//
//  Created by dawood on 9/5/25.
//
import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @State var topCurrency: Currency
    @State var bottomCurrency: Currency
    
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
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                // Currency icon
                IconGrid(currency: topCurrency)
                
                // Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .padding(.top)
                
                IconGrid(currency: bottomCurrency)
                
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
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    SelectCurrency(topCurrency: .copperPenny, bottomCurrency: .goldPenny)
}
