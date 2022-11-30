//
//  AvailableFunds.swift
//  BestBank
//
//  Created by Jakub Chodara on 30/11/2022.
//

import SwiftUI

struct AvailableFunds: View {
    @Binding var AvaliableFoundss: String
    var body: some View {
        HStack{
            ZStack {
                
                Image(systemName: "goforward")
                    .resizable()
                    .foregroundColor(Color.orange)
                    .frame(width: 90, height: 90)
                    .padding(.leading, 150)
                    .padding(.bottom, 0)
                
                
                    
                
                VStack(alignment: .leading){
                    Text("Avaliabale Funds:")
                    Text("\(AvaliableFoundss) PLN")
                        .font(.title)
                    HStack {
                        Text("Expenses to")
                            .font(.footnote)
                        Text(Date.now, format: .dateTime.day().month(.wide))
                            .font(.footnote)
                        Text("9 324,43 PLN")
                            .font(.footnote)
                        Spacer()
                    }
                    
                    Button(action: {

                    }, label: {
                        Text("Analize history")
                            .font(.footnote)
                            .foregroundColor(Color.red)
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


struct AvailableFunds_Previews: PreviewProvider {
    @State static var AvaliableFoundss: String = "No data"
    static var previews: some View {
        AvailableFunds(AvaliableFoundss: $AvaliableFoundss)
    }
}
