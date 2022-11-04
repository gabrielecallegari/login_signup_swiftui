//
//  ContentView.swift
//  Spotifyloginsignup
//
//  Created by Gabriele Callegari on 04/11/22.
//

import SwiftUI

struct ContentView: View {
    let background = Color(red: 0.18, green: 0.18, blue: 0.20)
       let greenColor = Color(red: 0.37, green: 0.73, blue: 0.39)
       @State var username = ""
       @State var email = ""
       @State var password = ""
       @State var confpassword = ""
       @State var mypassword = ""
       
       @State var remember = false
       @State var selected = true
       var body: some View {
           VStack{
               HStack{
                   Spacer()
                   Spacer()
                   Button(action:{
                       selected = true
                   }){
                       Text("LOG IN").font(.system(size: 25)).foregroundColor(.white)
                   }.border(width: 3, edges: [.bottom], color: selected==true ? greenColor : background)
                   Spacer()
                   Button(action:{
                       selected = false
                   }){
                       Text("SIGN UP").font(.system(size: 25)).foregroundColor(.white)
                   }.border(width: 3, edges: [.bottom], color: selected==false ? greenColor : background)
                   Spacer()
                   Spacer()
               }
               Spacer()
               VStack{
                   if selected == true{
                       VStack{
                           Spacer()
                           HStack{
                               Image(systemName: "person.fill").foregroundColor(.black).padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                               TextField("Username", text: $username).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                               
                           }.background(.white).font(.system(size: 30)).cornerRadius(15)
                               .overlay(
                                   RoundedRectangle(cornerRadius: 5)
                                       .stroke(lineWidth: 0.0)
                               ).padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                           HStack{
                               Image(systemName: "key.fill").foregroundColor(.black).padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                               SecureField("Password", text: $mypassword).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                               
                           }.background(.white).font(.system(size: 30)).cornerRadius(15)
                               .overlay(
                                   RoundedRectangle(cornerRadius: 5)
                                       .stroke(lineWidth: 0.0)
                               )
                           HStack{
                               Image(systemName: remember==true ? "checkmark.square.fill" : "square").foregroundColor(greenColor)
                               Text("Remember Me").foregroundColor(.white)
                               Spacer()
                           }.onTapGesture {
                               remember = !remember
                           }.font(.system(size: 30))
                           Button(action: {}){
                               Text("LOG IN").foregroundColor(.white).font(.system(size: 30)).padding(EdgeInsets(top: 10, leading: 80, bottom: 10, trailing: 80))
                           }.background(greenColor).cornerRadius(15)
                               .overlay(
                                   RoundedRectangle(cornerRadius: 5)
                                       .stroke(lineWidth: 0.0)
                               )
                           Spacer()
                           Button(action:{
                               //action here
                           }){
                               Text("Forgot your password?")
                           }
                       }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                   }else{
                       VStack{
                           Spacer()
                           HStack{
                               Image(systemName: "person.fill").foregroundColor(.black).padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                               TextField("Username", text: $username).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                               
                           }.background(.white).font(.system(size: 30)).cornerRadius(15)
                               .overlay(
                                   RoundedRectangle(cornerRadius: 5)
                                       .stroke(lineWidth: 0.0)
                               ).padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                           HStack{
                               Image(systemName: "envelope.fill").foregroundColor(.black).padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                               TextField("Email", text: $email).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                               
                           }.background(.white).font(.system(size: 30)).cornerRadius(15)
                               .overlay(
                                   RoundedRectangle(cornerRadius: 5)
                                       .stroke(lineWidth: 0.0)
                               ).padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                           HStack{
                               Image(systemName: "key.fill").foregroundColor(.black).padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                               SecureField("Password", text: $password).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                               
                           }.background(.white).font(.system(size: 30)).cornerRadius(15)
                               .overlay(
                                   RoundedRectangle(cornerRadius: 5)
                                       .stroke(lineWidth: 0.0)
                               ).padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                           HStack{
                               Image(systemName: password==confpassword && confpassword != "" ? "checkmark" : "xmark").foregroundColor(password==confpassword && confpassword != "" ? .green : .red).padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                               SecureField("Confirm Password", text: $confpassword).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                               
                           }.background(.white).font(.system(size: 30)).cornerRadius(15)
                               .overlay(
                                   RoundedRectangle(cornerRadius: 5)
                                       .stroke(lineWidth: 0.0)
                               ).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                           
                           
                           Button(action: {}){
                               Text("SIGN UP").foregroundColor(.white).font(.system(size: 30)).padding(EdgeInsets(top: 10, leading: 80, bottom: 10, trailing: 80))
                           }.background(greenColor).cornerRadius(15)
                               .overlay(
                                   RoundedRectangle(cornerRadius: 5)
                                       .stroke(lineWidth: 0.0)
                               ).padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
                           Spacer()
                       }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                   }
               }
               Spacer()
           }.frame(maxWidth: .infinity,
                   maxHeight: .infinity).background(background)
       }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
