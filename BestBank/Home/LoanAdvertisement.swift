//
//  LoanAdvertisement.swift
//  BestBank
//
//  Created by Jakub Chodara on 30/11/2022.
//

import SwiftUI

struct LoanAdvertisement: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("Loan up to:")
                Text("+50 000 PLN")
                    .font(.title)
                    .foregroundColor(Color.orange)
                Text("-60% provision for Loan with code: STAR60")
                    .font(.footnote)
                Text("(RRSO 17,14%)")
                    .font(.footnote)
                
                HStack {
                    Button(action: {

                    }, label: {
                        Text("check it!")
                            .foregroundColor(Color.red)
                })
                    Spacer()
                    Button(action: {

                    }, label: {
                        Text("see cost of loan")
                            .font(.footnote)
                            .foregroundColor(Color.black)
                })
                }
            }
        }
        .padding()
        .cornerRadius(20)
       // .background(Color(UIColor(red: 0.12, green: 0.64, blue: 0.27, alpha: 1.00)))
        .frame(width: 300, height: 10)


    }
    
    }


struct LoanAdvertisement_Previews: PreviewProvider {
    static var previews: some View {
        LoanAdvertisement()
    }
}
