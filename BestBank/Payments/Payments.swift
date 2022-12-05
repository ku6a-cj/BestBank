//
//  Payments.swift
//  BestBank
//
//  Created by Jakub Chodara on 30/11/2022.
//

import SwiftUI

struct Payments: View {
    @State var tabIndex = 0
    var body: some View {
        VStack{
            Spacer()
            HStack {
                Button(action: {
                   tabIndex = 0
                }, label: {
                    Text("New")
                })
                Button(action: {
                   tabIndex = 1
                }, label: {
                    Text("History")
                })
            }
            Form{
                LazyHStack(alignment: .center, spacing: 0){
                    if(tabIndex == 0){
                        NewPayments()
                            .frame(width: 600, height: 700)
                    }else if(tabIndex == 1){
                       NewHistory()
                            .frame(width: 600, height: 700)
                    }
                
                }

            }
            
            }
    }
    
}


struct Payments_Previews: PreviewProvider {
    static var previews: some View {
        Payments()
    }
}
