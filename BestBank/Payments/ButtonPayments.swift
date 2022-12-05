//
//  ButtonPayments.swift
//  BestBank
//
//  Created by Jakub Chodara on 05/12/2022.
//

import SwiftUI

struct ButtonPayments: View {
    @Binding var text: String
    @Binding var isSelected: Bool
    var body: some View {
        Text(text)
                  .fontWeight(isSelected ? .heavy : .regular)
                  .font(.custom("Avenir", size: 16))
                  .padding(.bottom, 10.0)
                  .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: isSelected ? 2: 1)
        
                  
    }
}

struct ButtonPayments_Previews: PreviewProvider {
    @State static var isSelected: Bool = false
    @State static var text: String = "sth"
    static var previews: some View {
        ButtonPayments( text: $text, isSelected: $isSelected)
    }
}
