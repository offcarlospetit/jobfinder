//
//  SwiftUIView.swift
//  JobFinder
//
//  Created by Carlos Petit on 21-05-20.
//  Copyright © 2020 Carlos Petit. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack(spacing:0){
                HStack{
                    VStack {
                        Text("Good Jobs").fontWeight(.heavy).font(.system(size: 34)).foregroundColor(Color("TextColor"))
                        Text("Have a nice day!").fontWeight(.medium).font(.system(size: 17)).foregroundColor(Color("TextColor"))
                    }.padding(.top, 30)
                    VStack{
                        Image("Person")
                    }.padding(.top, 45)
                }
                ZStack{
                    CustomTextField(placeholder: "Search")
                }.frame(width: UIScreen.main.bounds.size.width).offset(x: 0, y:-15)
                
            }
            HStack(){
                Text("Have a nice day!").fontWeight(.bold).font(.system(size: 17)).foregroundColor(Color("TextColor"))
                Spacer()
            }.padding(.horizontal)
            HStack{
                ScrollView(.horizontal) {
                    HStack() {
                        ForEach(0..<10) {_ in
                            CardView(card: Card.example, cardSizeW: CardStyle().small().width, cardSizeH: CardStyle().small().height).padding(.horizontal, 10)
                        }
                    }
                }
            }
            HStack(){
                CardView(card: Card.example, cardSizeW: CardStyle().medium().width, cardSizeH: CardStyle().medium().height)
            }.padding().padding(.top, 15)
            
        }.background(Color("BackgroundColor")).frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
    }
}

struct CustomTextField: View {
    var placeholder: String = ""
    @State var emailValue: String = ""
    var body: some View{
        TextField(placeholder, text: $emailValue).padding(.all, 12.0).foregroundColor(.black).accentColor(.pink).background(Color.white).cornerRadius(25).frame(width: UIScreen.main.bounds.size.width * 0.95)
    }
}

struct Card {
    let prompt: String
    let answer: String
    static var example: Card {
        Card(prompt: "Developer Full Stack", answer: "Jodie Whittaker")
    }
}

struct CardStyle {
    let width:CGFloat = (UIScreen.main.bounds.size.width * 0.35)
    let height:CGFloat = 196
    
    func small() -> (width: CGFloat, height: CGFloat) {
        return(self.width, self.height)
    }
    
    func medium() -> (width: CGFloat, height: CGFloat) {
        return(UIScreen.main.bounds.size.width * 0.70, self.height)
    }
    
    func large() -> (width: CGFloat, height: CGFloat) {
        return(UIScreen.main.bounds.size.width * 0.95, self.height)
    }
}

struct CardView: View {
    let card: Card
    var cardSizeW: CGFloat
    var cardSizeH: CGFloat
    
    var body: some View {
        ZStack(alignment: .top) {
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.white)
            
            VStack(alignment:.leading, spacing: 8) {
                HStack{
                    Text(card.prompt)
                        .font(.title)
                        .foregroundColor(.black)
                }
                HStack{
                    Text(card.answer)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                HStack{
                    Text("Develop").padding(5)
                        .font(.subheadline)
                        .foregroundColor(.gray).background(Color("MainColor")).cornerRadius(6)
                }
                HStack{
                    Text("+ 350 applys").padding(5)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            .padding(.top, 10)
            .multilineTextAlignment(.center)
        }
        .frame(width:cardSizeW, height: cardSizeH)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
