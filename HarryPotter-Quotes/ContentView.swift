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
        MainView()
    }
}

struct MainView: View {
    let quote = ["quote1","quote2","quote1","quote2","quote1","quote2"]
    
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
                        ForEach(self.quote, id: \.self) {
                            quote in
                            VStack {
                                Image(systemName: "a.square.fill")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                
                                Text(quote)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
