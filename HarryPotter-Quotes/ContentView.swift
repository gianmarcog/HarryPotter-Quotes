//
//  ContentView.swift
//  HarryPotter-Quotes
//
//  Created by Gianmarco Giretti on 28.12.19.
//  Copyright © 2019 Gianmarco Giretti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
        MainView()
            
        Spacer()
        }.background(Image("motivation_bg")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all))
    }
}

struct MainView: View {
    let quotes = ["quote1","quote2","quote1","quote2","quote1","quote2"]
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Harry Potter Quotes App")
                    .font(.subheadline)
                    .italic()
                    .foregroundColor(.orange)
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    HStack {
                        ForEach(self.quotes, id: \.self) {
                                quote in
                            VStack {
                                CircleImage(imageName: "lilly")
                                Text(quote)
                                
                                Divider()
                                
                                Text("By - Harry Potter")
                                .italic()
                                    .font(.custom("Helvetica neue", size: 14))
                            }.frame(width:300, height: 300)
                                .foregroundColor(.gray)
                                .padding(.all, 4)
                                .background(Color.white)
                        }
                    }
                }
            }
        }
    }
}

struct CircleImage: View {
    var imageName: String
    var body: some View {
       
            Image(imageName)
                .resizable()
                .clipShape(Circle())
                .overlay(Circle()
                    .stroke(Color.gray, lineWidth: 2))
                .shadow(radius: 3)
                .frame(width: 60, height: 60)
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
