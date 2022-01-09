//
//  LoginPage.swift
//  UIDesign_Challenge
//
//  Created by Mohan Sathiyamoorthy on 29/12/21.
//

import SwiftUI

struct LoginPage: View {
    
    @State private var mailID: String = "Jack@gmail.com"
    @State private var password: String = "Jack@gmail.com"
    @State private var signupValue = false
    @State var textFieldWidth: CGFloat = UIScreen.main.bounds.size.width - 50
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("BlueColor").ignoresSafeArea(.all)
                Group {
                    Capsule()
                        .fill(Color("YellowColor"))
                        .ignoresSafeArea()
                        .frame(width: 300, height: 340, alignment: .center)
                        .offset(x: -180, y: -350)
                    Capsule()
                        .fill(Color("DarkBlueColor"))
                        .frame(width: 130, height: 250)
                        .offset(x: -50, y: -450)
                    Circle()
                        .fill(Color("GreenColor"))
                        .frame(width: 100, height: 100, alignment: .center)
                        .offset(x: -40, y: -294)
                    Circle()
                        .fill(Color("OrganColor"))
                        .ignoresSafeArea()
                        .frame(width: 130, height: 150, alignment: .center)
                        .offset(x: -50, y: -354)
                    Circle()
                        .fill(Color("PinkColor"))
                        .ignoresSafeArea()
                        .frame(width: 210, height: 210, alignment: .center)
                        .offset(x: 127, y: -420)
                    Circle()
                        .fill(Color("OrganColor"))
                        .frame(width: 130, height: 130, alignment: .center)
                        .offset(x: -160, y: -150)
                    Circle()
                        .fill(Color("DarkBlueColor"))
                        .frame(width: 80, height: 80, alignment: .center)
                        .offset(x: -80, y: -150)
                    ZStack {
                        Circle()
                            .fill(.white)
                            .frame(width: 130, height: 130, alignment: .center)
                        Circle()
                            .fill(Color("GreenColor"))
                            .frame(width: 130, height: 130, alignment: .center)
                            .offset(x: 60, y: 54)
                    }
                    .cornerRadius(65)
                    .offset(x: 50, y: -183)
                    ZStack {
                        Capsule()
                            .fill(Color("YellowColor"))
                            .frame(width: 130, height: 130, alignment: .center)
                        Circle()
                            .fill(Color("GreenColor"))
                            .frame(width: 130, height: 130, alignment: .center)
                            .offset(x: -60, y: 54)
                    }
                    .cornerRadius(65)
                    .offset(x: 170, y: -183)
                    Circle()
                        .fill(Color("GreenColor"))
                        .frame(width: 155, height: 155, alignment: .center)
                        .offset(x: 118, y: -270)
                }
                Group {
                    Text("Welcome")
                        .font(.custom("Pacifico-Regular", size: 35))
                        .foregroundColor(.white)
                        .offset(x: -110, y: -30)
                    Text("Back")
                        .font(.custom("Pacifico-Regular", size: 35))
                        .foregroundColor(.white)
                        .offset(x: -135, y: 10)
                    VStack {
                        TextField("Username", text: $mailID, prompt: Text("User name").foregroundColor(.white))
                            .padding(.bottom, 10)
                            .padding(.top, 10)
                            .padding(.leading, 25)
                            .foregroundColor(.white)
                            .background(Color("LightBlue"))
                            .cornerRadius(55)
                            .font(.custom("Oswald-Regular", size: 25))
                            .multilineTextAlignment(.leading)
                            .frame(width: textFieldWidth, height: 50, alignment: .center)
                        SecureField("Password", text: $password, prompt: Text("User name").foregroundColor(.white))
                            .padding(.bottom, 10)
                            .padding(.top, 10)
                            .padding(.leading, 25)
                            .foregroundColor(.white)
                            .background(Color("LightBlue"))
                            .cornerRadius(55)
                            .font(.custom("Oswald-Regular", size: 25))
                            .multilineTextAlignment(.leading)
                            .frame(width: textFieldWidth, height: 50, alignment: .center)
                            .padding(.top, 10)
                    }.offset(y: 120)
                }
                Button(action: {
                    
                }, label: {
                    Text("Forgot Password?")
                        .foregroundColor(.white)
                        .font(.custom("Oswald-Regular", size: 17))
                        .fontWeight(.bold)
                })
                    .offset(x: 110, y: 210)
                Button(action: {

                }, label: {
                    Text("Login")
                        .foregroundColor(.white)
                        .font(.custom("Oswald-Regular", size: 22))
                        .fontWeight(.bold)
                        .padding(.bottom, 10)
                })
                    .frame(width: 140, height: 50, alignment: .center)
                    .background(Color("OrganColor"))
                    .cornerRadius(55)
                    .offset(x: 0, y: 260)
                HStack {
                    NavigationLink(destination: ContentView(), isActive: $signupValue) {
                    }
                    Text("New User ?")
                        .fontWeight(.bold)
                        .font(.custom("Oswald-Regular", size: 17))
                        .foregroundColor(.white)
                    Button(action: {
                        signupValue = true
                    }, label: {
                        Text("Signup")
                            .foregroundColor(Color("OrganColor"))
                            .font(.custom("Oswald-Regular", size: 20))
                            .fontWeight(.heavy)
                    })
                }.offset(x: 0, y: 330)
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
