//
//  Payments.swift
//  BestBank
//
//  Created by Jakub Chodara on 30/11/2022.
//

import SwiftUI

struct Payments: View {
    @State var TopMenuChoice = "Select your gender"
    @State var UserName = "User Name"
    @State var tabIndex = 0
    @State var tabIndex0Selected:Bool = true
    @State var tabIndex1Selected:Bool = false
    var body: some View {
        VStack{
            HStack {
                Text("Hi, "+UserName)
                Menu{
                    Button(action: {
                        TopMenuChoice="Write on Chat"
                    }, label: {
                        Text("Write on Chat")
                    })
                    Button(action: {
                        TopMenuChoice="Mobile Autorization"
                    }, label: {
                        Text("Mobile Autorization")
                    })
                    Button(action: {
                        TopMenuChoice="Rate App"
                    }, label: {
                        Text("Rate App")
                    })
                    Button(action: {
                        TopMenuChoice="Log Out"
                    }, label: {
                        Text("Log Out")
                    })
                }label:{
                    Label(
                        title:{Text("")},
                        icon: {Image(systemName: "chevron.down")}
                    ).foregroundColor(Color.black)
                }
            }
            Spacer()
            HStack {
                Button(action: {
                   tabIndex = 0
                    tabIndex0Selected = true
                    tabIndex1Selected = false
                }, label: {
                    Text("New")
                        .foregroundColor(tabIndex0Selected ? Color.red : Color.black)
                })
                Button(action: {
                   tabIndex = 1
                    tabIndex0Selected = false
                    tabIndex1Selected = true
                }, label: {
                    Text("History")
                        .foregroundColor(tabIndex1Selected ? Color.red : Color.black)
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
