//
//  ContentView.swift
//  HarryPotter-Quotes
//
//  Created by Gianmarco Giretti on 28.12.19.
//  Copyright © 2019 Gianmarco Giretti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var quotes: [Quote] = [
           Quote(quote: "First Quote", name: "Robert"),
           Quote(quote: "Second Quote", name: "Peter"),
           Quote(quote: "Third Quote", name: "Susan"),
           Quote(quote: "Fourth Quote", name: "Ellen"),
           Quote(quote: "Fith Quote", name: "Oprah"),
           Quote(quote: "Sixth Quote", name: "Sherlock")
       ]
    
    var body: some View {
        VStack {
       
            CircleImage(imageName: "lilly")
            .frame(width: 160, height: 160)
            .padding(.top, 89)
            .padding(.bottom, 20)
        
            MainView(quotes: quotes)
            
        Spacer()
        }.background(Image("motivation_bg")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
            )
    }
}

struct MainView: View {
    
    var quotes: [Quote]
    
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
                        ForEach(self.quotes, id: \.id) {
                                quote in
                            VStack {
                                CircleImage(imageName: "lilly")
                                Text(quote.quote)
                            
                                //Make the visual line 
                                Divider()
                                
                                Text("By - \(quote.name)")
                                .italic()
                                    .font(.custom("Helvetica neue", size: 14))
                            }.frame(width:300, height: 300)
                                .foregroundColor(.gray)
                                .padding(.all, 4)
                                .background(Color.white)
                            .cornerRadius(13)
                            .overlay(Rectangle()
                                .fill(
                                    LinearGradient(gradient: Gradient(colors: [.clear,.pink]), startPoint: .center, endPoint: .topLeading))
                                .clipped()
                                .shadow(radius: 10))
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
