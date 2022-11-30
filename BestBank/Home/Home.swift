//
//  Home.swift
//  BestBank
//
//  Created by Jakub Chodara on 30/11/2022.
//

import SwiftUI

struct Home: View {
    //variables
    @State var TopMenuChoice = "Select your gender"
    @State var UserName = "User Name"
    @State var AvaliableFoundss = "332.41"
    var body: some View {
        
        ZStack {
            VStack {
                HStack {
                    Spacer()
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
                    
                    //questionMark button
                    Button(action: {
                       
                    }, label: {
                        Label("", systemImage: "questionmark.circle")
                    })
                    
                    Button(action: {
                       
                    }, label: {
                        Label("", systemImage: "gear")
                    })
                    Button(action: {
                       
                    }, label: {
                        Label("", systemImage: "bubble.left")
                    })
                    
                }
                
                Form{
                    ScrollView(.horizontal){
                        LazyHStack(alignment: .center, spacing: 0){
                            AvailableFunds(AvaliableFoundss: $AvaliableFoundss)
                            LoanAdvertisement()
                        }}.frame(height:130)
                    
                }.frame(height: 240)
                
            
              
                Text("Last operations")
                        .padding(.top, 80.0)
                        .padding(.trailing, 200.0)
                        
                
                
                Spacer()
            }.tint(Color.blue)
            
            Button(action: {
             //   print("BLIG")
            }, label: {
                Image(systemName: "b.circle.fill")
                    .resizable()
                    .foregroundColor(Color.black)
                    .frame(width: 70, height: 70)})
                    .frame(width: 70, height: 70)
                    .padding(.leading, 0)
                    .padding(.bottom, 220)


            Text("BLIG")
                .font(.footnote)
                .foregroundColor(Color.black)
                .padding(.leading, 0)
                .padding(.bottom, 130)
            
            
            Button(action: {
             //   print("PHONE!")
            }, label: {
                Image(systemName: "iphone.homebutton.circle.fill")
                    .resizable()
                    .foregroundColor(Color.orange)
                    .frame(width: 70, height: 70)
            }).frame(width: 70, height: 70)
                .padding(.leading, 260)
                .padding(.bottom, 220)

            Text("top up phone")
                .font(.footnote)
                .foregroundColor(Color.black)
                .padding(.leading, 260)
                .padding(.bottom, 130)
            
            Button(action: {
              //  print("transfer!")
            }, label: {
                Image(systemName: "arrow.left.arrow.right.circle.fill")
                    .resizable()
                    .foregroundColor(Color.green)
                    .frame(width: 70, height: 70)
            }).padding(.leading, -170)
                .padding(.bottom, 220)
            
            Text("new transfer")
                .font(.footnote)
                .foregroundColor(Color.black)
                .padding(.leading, -170)
                .padding(.bottom, 130)
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
