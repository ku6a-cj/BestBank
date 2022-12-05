//
//  CustomTopBar.swift
//  BestBank
//
//  Created by Jakub Chodara on 05/12/2022.
//

import SwiftUI

struct CustomTopBar: View {
    @Binding var tabIndex: Int
    @State var FirstView: String = "Payments"
    @State var SecondView: String = "History"
    var body: some View {
        HStack(spacing: 20) {
            ButtonPayments(text: $FirstView, isSelected: .constant(tabIndex == 0))
                        .onTapGesture { onButtonTapped(index: 0) }
                    ButtonPayments(text: $SecondView, isSelected: .constant(tabIndex == 1))
                        .onTapGesture { onButtonTapped(index: 1) }
                    Spacer()
                }
        .border(Color.black, width: 1.0)
    }
    private func onButtonTapped(index: Int) {
            withAnimation { tabIndex = index }
        }
}

struct CustomTopBar_Previews: PreviewProvider {
    @State static var tabIndex: Int = 1
    static var previews: some View {
        CustomTopBar(tabIndex: $tabIndex)
    }
}
