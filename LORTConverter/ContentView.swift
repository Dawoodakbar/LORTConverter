  //
//  ContentView.swift
//  LORTConverter
//
//  Created by dawood on 9/5/25.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    @State var showSelectedCurrency = false
    @State var leftText = ""
    @State var rightText = ""
    
    @State var leftCurrency: Currency = .goldPenny
    @State var rightCurreny: Currency = .silverPiece
    
    var body: some View {
        
        ZStack {
             // Background image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                // Pony Image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                // Currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                // Conversion Section
                HStack {
                    
                    // Left Conversion Section
                    VStack {
                        // Currency
                        HStack {
                            // Currency Image
                            Image(leftCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            // Currency Text
                            Text(leftCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        .padding(.bottom,-5)
                        .onTapGesture {
                            showSelectedCurrency.toggle()
                        }
                        
                        // Text Field
                        TextField("Text Field", text: $leftText)
                            .textFieldStyle(.roundedBorder)
                            
                    }
                    
                    // Equal Sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.bounce)
                    // Right Conversion section
                    VStack {
                        // Currency
                        
                        HStack {
                            // Currency Text
                            Text(rightCurreny.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            // Currency Image
                            Image(rightCurreny.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        .padding(.bottom,-5)
                        .onTapGesture {
                            showSelectedCurrency.toggle()
                        }
                        
                        // Text Field
                        TextField("Text Field", text: $rightText)  
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)

                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                
                Spacer()
                
                // Info Button
                HStack {
                    Spacer()
                    
                    Button {
                        showExchangeInfo.toggle()
                    } label: {
                    Image(systemName: "info.circle.fill")
                    }
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    
                }
                .padding(.trailing)
                .sheet(isPresented: $showExchangeInfo) {
                    ExchangeInfo()
                }
                .sheet(isPresented: $showSelectedCurrency) {
                    SelectCurrency(topCurrency: $leftCurrency, bottomCurrency: $rightCurreny)
                }
            }
        }
    }
}

#Preview {
    ContentView(leftCurrency: .goldPenny, rightCurreny: .goldPiece)
}
