//
//  NewPayments.swift
//  BestBank
//
//  Created by Jakub Chodara on 05/12/2022.
//

import SwiftUI

struct NewPayments: View {
    @State var TopMenuChoice = "Select your gender"
    @State var UserName = "User Name"
    @State var AvaliableFoundss = "332.41"
    var body: some View {
        VStack(alignment: .center){
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
            Button(action: {
            }, label: {
                HStack{
                    Image(systemName: "plus.circle")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Tap to add favourite recipient")
                }
            }).foregroundColor(Color.blue)
                .frame(width: 300)
            
            Button(action: {

            }, label: {
                HStack {
                    Image(systemName: "banknote.fill")
                        .resizable()
                    .frame(width: 30, height: 20)
                    Text("New Payment")
                }
             
            })
            .frame(width: 300, height: 50)
            .foregroundColor(Color.white)
            .background(Color.green)
            
            
            HStack{
                Button(action: {

                }, label: {
                    HStack{
                        Image(systemName: "person.crop.circle.badge.checkmark")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("On my own Account")
                    }
                }).frame(width: 145, height: 50)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                
                Button(action: {

                }, label: {
                    HStack{
                        Image(systemName: "iphone.homebutton")
                            .resizable()
                            .frame(width: 20, height: 40)
                        Text("Payment on phone")
                    }
                }).frame(width: 145, height: 50)
                    .background(Color.orange)
                    .foregroundColor(Color.white)
                

            }
            
            
            
            HStack{
                Button(action: {

                }, label: {
                    HStack{
                        Image(systemName: "dollarsign.arrow.circlepath")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("standing order")
                    }
                }).frame(width: 145, height: 50)
                    .foregroundColor(Color.black)
                    .border(Color.gray)
                
                
                Button(action: {

                }, label: {
                    HStack{
                        Image(systemName: "ellipsis.bubble")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("transfer request")
                    }
                }).frame(width: 145, height: 50)
                    .foregroundColor(Color.black)
                    .border(Color.gray)
                

            }
            
            HStack{
                Button(action: {

                }, label: {
                    HStack{
                        Image(systemName: "suit.heart.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color.red)
                        Text("support all year")
                    }
                }).frame(width: 145, height: 50)
                    .foregroundColor(Color.black)
                    .border(Color.gray)
                
                
                Button(action: {

                }, label: {
                    HStack{
                        Image(systemName: "iphone")
                            .resizable()
                            .frame(width: 20, height: 30)
                        Text("top up your phone")
                    }
                }).frame(width: 145, height: 50)
                    .foregroundColor(Color.black)
                    .border(Color.gray)
                

            }
            
            
            
            
            HStack{
                Button(action: {

                }, label: {
                    HStack{
                        Image(systemName: "qrcode.viewfinder")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("Scan  or make")
                    }
                }).frame(width: 145, height: 50)
                    .foregroundColor(Color.black)
                    .border(Color.gray)
                
                
                Button(action: {

                }, label: {
                    HStack{
                        Image(systemName: "doc.text.magnifyingglass")
                            .resizable()
                            .frame(width: 20, height: 30)
                        Text("  taxes")
                    }
                }).frame(width: 145, height: 50)
                    .foregroundColor(Color.black)
                    .border(Color.gray)
                

            }



            
            HStack {
                VStack(alignment: .leading){
                    Button(action: {

                    }, label: {
                            HStack{
                                Image(systemName: "doc.plaintext")
                                    .resizable()
                                    .frame(width: 20, height: 25)
                                Text("ZUS")
                            }
                        
                    }).frame(width: 145, height: 50)
                        .foregroundColor(Color.black)
                        .border(Color.gray)
                }
                Spacer()
            }.frame(width: 300)


          Spacer()

        }.frame(width: 600)
    }
}

struct NewPayments_Previews: PreviewProvider {
    static var previews: some View {
        NewPayments()
    }
}
