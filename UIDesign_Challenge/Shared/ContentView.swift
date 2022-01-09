//
//  ContentView.swift
//  Shared
//
//  Created by Mohan Sathiyamoorthy on 25/12/21.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UINavigationBar.appearance().tintColor = .white
    }
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var firstName: String = "Jack"
    @State private var secondName: String = "S"
    @State private var mailID: String = "Jack@gmail.com"
    @State private var phoneNumber: String = "9978638374"
    @State private var countryCode: String = "+91"
    @State private var username: String = "Select Center"
    @State private var loginValue = false
    @State var textFieldWidth: CGFloat = UIScreen.main.bounds.size.width - 50
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("BlueColor").ignoresSafeArea(.all)
                Text("Hello...!")
                    .foregroundColor(.white)
                    .font(.custom("Pacifico-Regular", size: 35))
                    .offset(x: -110, y: -380)
                VStack {
                    Group {
                        Section {
                            TextField("", text: $firstName, prompt: Text("First Name").foregroundColor(.black))
                                .padding(.bottom, 10)
                                .padding(.top, 10)
                                .padding(.leading, 25)
                                .background(Color("LightBlue"))
                                .cornerRadius(55)
                                .foregroundColor(.white)
                                .font(.custom("Oswald-Regular", size: 25))
                                .multilineTextAlignment(.leading)
                                .frame(width: textFieldWidth, height: 50, alignment: .center)
                        }.padding(.top, 50)
                        Section {
                            TextField("Username", text: $secondName, prompt: Text("Second Name").foregroundColor(.white))
                                .padding(.bottom, 10)
                                .padding(.top, 10)
                                .padding(.leading, 25)
                                .foregroundColor(.white)
                                .background(Color("LightBlue"))
                                .cornerRadius(55)
                                .font(.custom("Oswald-Regular", size: 25))
                                .multilineTextAlignment(.leading)
                                .frame(width: textFieldWidth, height: 50, alignment: .center)
                        }.padding(.top, 20)
                        Section {
                            TextField("Username", text: $mailID, prompt: Text("MailID").foregroundColor(.white))
                                .padding(.bottom, 10)
                                .padding(.top, 10)
                                .padding(.leading, 25)
                                .foregroundColor(.white)
                                .background(Color("LightBlue"))
                                .cornerRadius(55)
                                .font(.custom("Oswald-Regular", size: 25))
                                .multilineTextAlignment(.leading)
                                .frame(width: textFieldWidth, height: 50, alignment: .center)
                        }.padding(.top, 20)
                        Section {
                            ZStack {
                                TextField("Username", text: $phoneNumber, prompt: Text("Phone Number").foregroundColor(.white))
                                    .padding(.bottom, 10)
                                    .padding(.top, 10)
                                    .padding(.leading, 90)
                                    .foregroundColor(.white)
                                    .background(Color("LightBlue"))
                                    .cornerRadius(55)
                                    .font(.custom("Oswald-Regular", size: 25))
                                    .frame(width: textFieldWidth, height: 50, alignment: .center)
                                TextField("Username", text: $countryCode, prompt: Text("+91"))
                                    .padding(.bottom, 10)
                                    .padding(.top, 10)
                                    .padding(.leading, 22)
                                    .foregroundColor(.white)
                                    .background(Color("BlueColor2"))
                                    .cornerRadius(55)
                                    .font(.custom("Oswald-Regular", size: 25))
                                    .frame(width: 80, height: 50, alignment: .center)
                                    .offset(x: -135)
                            }
                        }.padding(.top, 20)
                        Section {
                            TextField("Username123", text: $username, prompt: Text("User name456").foregroundColor(.white))
                                .padding(.bottom, 10)
                                .padding(.top, 10)
                                .padding(.leading, 25)
                                .foregroundColor(.white)
                                .background(Color("LightBlue"))
                                .cornerRadius(55)
                                .font(.custom("Oswald-Regular", size: 25))
                                .multilineTextAlignment(.leading)
                                .frame(width: textFieldWidth, height: 50, alignment: .center)
                        }.padding(.top, 20)
                        Section {
                            Button(action: {
                                
                            }, label: {
                                Text("Signup")
                                    .foregroundColor(.white)
                                    .font(.custom("Oswald-Regular", size: 20))
                                    .fontWeight(.bold)
                            })
                                .padding(.leading, 35)
                                .padding(.trailing, 35)
                                .padding(.top, 10)
                                .padding(.bottom, 13)
                                .background(Color("OrganColor"))
                                .cornerRadius(55)
                                .font(.title2)
                        }.padding(.top, 35)
                    }.offset(y: -40)
                    ZStack {
                        HStack {
                            Circle().fill(Color("OrganColor"))
                                .ignoresSafeArea()
                                .frame(width: 150, height: 150, alignment: .center)
                                .offset(x: 15, y: 90)
                            HStack {
                                NavigationLink(destination: LoginPage(), isActive: $loginValue) {
                                }
                                Text("Already Have Account?")
                                    .foregroundColor(.white)
                                    .font(.custom("Oswald-Regular", size: 17))
                                    .fontWeight(.semibold)
                                Button(action: {
                                    presentationMode.wrappedValue.dismiss()
                                    loginValue = true
                                }, label: {
                                    Text("Login")
                                        .foregroundColor(Color("OrganColor"))
                                        .font(.custom("Oswald-Regular", size: 19))
                                        .fontWeight(.bold)
                                })
                            }.frame(width: 250, height: 30, alignment: .center)
                                .offset(x: 5, y: 80)
                            Circle().fill(Color("YellowColor"))
                                .ignoresSafeArea()
                                .frame(width: 150, height: 150, alignment: .center)
                                .offset(x: 0, y: 120)
                        }.frame(width: textFieldWidth + 50)
                    }.offset(y: -20)
                }
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
