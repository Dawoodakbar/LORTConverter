//
//  CurrencyTip.swift
//  LORTConverter
//
//  Created by dawood on 9/17/25.
//

import TipKit

struct CurrencyTip: Tip {
     
    var title = Text("Change Currency")
    
    var message : Text? =  Text("Tap on the left or right currency to bring up the Select Currency screen")
    
    var image: Image? = Image(systemName: "hand.tap.fill")
}


