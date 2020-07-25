//
//  ContentView.swift
//  MarketSA
//
//  Created by Phaswana Malatjie on 2020/04/26.
//  Copyright © 2020 Phaswana Malatjie. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            Image("iTunesArtwork")
                .resizable()
                .clipShape(Circle())
                .aspectRatio(contentMode: .fit)
                .padding(20)
                .overlay(
                    Circle().stroke(Color.gray, lineWidth: 5))
                .shadow(radius: 6)
             //Text("Market SA")
               // .font(.largeTitle)
                .tabItem {
                    GeometryReader { geometry in
                        VStack {
                            Image(systemName: "house")
                            Text("SENS/NEWS")
                        }.edgesIgnoringSafeArea(.bottom)
                    }
                }
        }
    }
}

/// <summary>
///  check if today is a business day (South African Calendar).
/// </summary>
func isBusinessDay(date: Date) ->
    Bool{
        //TODO: check that the current date is a business day
        return true
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
